# Railway-optimized Dockerfile for Whatomate

# Stage 1: Build Frontend
FROM node:22-alpine AS frontend-builder
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ .
RUN npm run build

# Stage 2: Build Backend
FROM golang:1.24.5-alpine AS builder
WORKDIR /app

# Install build dependencies
RUN apk add --no-cache git ca-certificates

# Copy go mod files and download modules
COPY go.mod go.sum ./
RUN go mod download

# Copy source and frontend dist into the build context
COPY . .
RUN mkdir -p internal/frontend/dist
COPY --from=frontend-builder /app/frontend/dist ./internal/frontend/dist

# Build static binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o whatomate ./cmd/whatomate

# Final Stage: runtime image
FROM alpine:3.19
WORKDIR /app

# Install runtime dependencies
RUN apk add --no-cache ca-certificates tzdata

# Copy binary and entrypoint
COPY --from=builder /app/whatomate .
COPY railway-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Create uploads directory and ensure proper permissions
RUN mkdir -p /app/uploads && chown -R 1000:1000 /app/uploads || true

# Expose port (Railway provides a PORT env var)
EXPOSE 8080

# Use entrypoint script to run migrations then start server
ENTRYPOINT ["/entrypoint.sh"]
