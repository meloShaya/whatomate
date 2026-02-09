# Railway-optimized Dockerfile for Whatomate
# Stage 1: Build Frontend
FROM node:22-alpine AS frontend-builder
WORKDIR /app
COPY frontend/package*.json ./frontend/
WORKDIR /app/frontend
RUN npm install
COPY frontend/ .
RUN npm run build

# Stage 2: Build Backend
FROM golang:1.24.5-alpine AS builder

WORKDIR /app

# Install build dependencies
RUN apk add --no-cache git ca-certificates

# Copy go mod files
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .

# Copy built frontend assets to the embedding location
RUN mkdir -p internal/frontend/dist
COPY --from=frontend-builder /app/frontend/dist ./internal/frontend/dist

# Build the binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o whatomate ./cmd/whatomate

# Final Stage
FROM alpine:3.19

WORKDIR /app

# Install runtime dependencies
RUN apk add --no-cache ca-certificates tzdata

# Copy binary from builder
COPY --from=builder /app/whatomate .

# Create a default config file that uses environment variables
RUN apk add --no-cache curl && \
    echo '#!/bin/sh' > /entrypoint.sh && \
    echo 'echo "Setting up Railway configuration..."' >> /entrypoint.sh && \
    echo 'echo "[server]" > config.toml' >> /entrypoint.sh && \
    echo "echo \"port = \${PORT:-8080}\" >> config.toml" >> /entrypoint.sh && \
    echo 'echo "" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "[database]" >> config.toml' >> /entrypoint.sh && \
    echo "echo \"host = \\\\"\${DATABASE_HOST:-localhost}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"port = \${DATABASE_PORT:-5432}\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"user = \\\\"\${DATABASE_USER:-whatomate}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"password = \\\\"\${DATABASE_PASSWORD:-whatomate}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"name = \\\\"\${DATABASE_NAME:-whatomate}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"ssl_mode = \\\"require\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo 'echo "" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "[redis]" >> config.toml' >> /entrypoint.sh && \
    echo "echo \"host = \\\\"\${REDIS_URL_HOST:-localhost}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"port = \${REDIS_URL_PORT_INT:-6379}\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"password = \\\\"\${REDIS_URL_PASSWORD:-}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"db = 0\" >> config.toml" >> /entrypoint.sh && \
    echo 'echo "" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "[jwt]" >> config.toml' >> /entrypoint.sh && \
    echo "echo \"secret = \\\\"\${WHATOMATE_JWT_SECRET:-your-super-secret-jwt-key-change-in-production}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo 'echo "" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "[app]" >> config.toml' >> /entrypoint.sh && \
    echo "echo \"environment = \\\"\${WHATOMATE_ENV:-production}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"debug = \${WHATOMATE_DEBUG:-false}\" >> config.toml" >> /entrypoint.sh && \
    echo 'echo "" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "[default_admin]" >> config.toml' >> /entrypoint.sh && \
    echo "echo \"email = \\\\"\${WHATOMATE_DEFAULT_ADMIN_EMAIL:-admin@example.com}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"password = \\\\"\${WHATOMATE_DEFAULT_ADMIN_PASSWORD:-admin}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo "echo \"full_name = \\\\"\${WHATOMATE_DEFAULT_ADMIN_FULL_NAME:-Admin User}\\\"\" >> config.toml" >> /entrypoint.sh && \
    echo 'echo "" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "[storage]" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "type = \\"local\\"" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "local_path = \\"./uploads\\"" >> config.toml' >> /entrypoint.sh && \
    echo 'echo "Running database migrations..."' >> /entrypoint.sh && \
    echo './whatomate server -migrate -config=config.toml' >> /entrypoint.sh && \
    echo 'echo "Starting Whatomate server..."' >> /entrypoint.sh && \
    echo 'exec ./whatomate server -config=config.toml' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

# Create uploads directory
RUN mkdir -p /app/uploads

# Expose port (Railway uses dynamic ports)
EXPOSE 8080

# Use entrypoint script to run migrations first
ENTRYPOINT ["/entrypoint.sh"]