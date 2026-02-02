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
# The frontend build output is in /app/frontend/dist (from Stage 1)
# The embedding package expects it in internal/frontend/dist
# We need to create the directory first
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

# Copy config example (will be overridden by env vars in production)
COPY --from=builder /app/config.example.toml ./config.toml

# Create uploads directory
RUN mkdir -p /app/uploads

# Expose port
EXPOSE 8080

# Run the binary
CMD ["./whatomate", "server", "-config", "config.toml", "-migrate"]
