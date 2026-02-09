#!/bin/sh
set -e

echo "Setting up Railway configuration..."

echo "[server]" > config.toml
echo "port = ${PORT:-8080}" >> config.toml
echo "" >> config.toml

echo "[database]" >> config.toml
echo "host = \"${DATABASE_HOST:-localhost}\"" >> config.toml
echo "port = ${DATABASE_PORT:-5432}" >> config.toml
echo "user = \"${DATABASE_USER:-whatomate}\"" >> config.toml
echo "password = \"${DATABASE_PASSWORD:-whatomate}\"" >> config.toml
echo "name = \"${DATABASE_NAME:-whatomate}\"" >> config.toml
echo "ssl_mode = \"require\"" >> config.toml
echo "" >> config.toml

echo "[redis]" >> config.toml
echo "host = \"${REDIS_URL_HOST:-localhost}\"" >> config.toml
echo "port = ${REDIS_URL_PORT_INT:-6379}" >> config.toml
echo "password = \"${REDIS_URL_PASSWORD:-}\"" >> config.toml
echo "db = 0" >> config.toml
echo "" >> config.toml

echo "[jwt]" >> config.toml
echo "secret = \"${WHATOMATE_JWT_SECRET:-your-super-secret-jwt-key-change-in-production}\"" >> config.toml
echo "" >> config.toml

echo "[app]" >> config.toml
echo "environment = \"${WHATOMATE_ENV:-production}\"" >> config.toml
echo "debug = ${WHATOMATE_DEBUG:-false}" >> config.toml
echo "" >> config.toml

echo "[default_admin]" >> config.toml
echo "email = \"${WHATOMATE_DEFAULT_ADMIN_EMAIL:-admin@example.com}\"" >> config.toml
echo "password = \"${WHATOMATE_DEFAULT_ADMIN_PASSWORD:-admin}\"" >> config.toml
echo "full_name = \"${WHATOMATE_DEFAULT_ADMIN_FULL_NAME:-Admin User}\"" >> config.toml
echo "" >> config.toml

echo "[storage]" >> config.toml
echo "type = \"local\"" >> config.toml
echo "local_path = \"./uploads\"" >> config.toml

echo "Running database migrations..."
./whatomate server -migrate -config=config.toml

echo "Starting Whatomate server..."
exec ./whatomate server -config=config.toml
