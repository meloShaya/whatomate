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

# Copy entrypoint script
COPY railway-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Create uploads directory
RUN mkdir -p /app/uploads

# Expose port (Railway uses dynamic ports)
EXPOSE 8080

# Use entrypoint script to run migrations first
ENTRYPOINT ["/entrypoint.sh"]