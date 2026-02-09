#!/bin/sh
set -e

# Ensure we're in app directory
cd /app || exit 1

CONFIG="/app/config.toml"

echo "Setting up Railway configuration at ${CONFIG}..."

# Ensure uploads directory exists
mkdir -p ./uploads

# Prefer DATABASE_URL (Railway standard)
if [ -n "$DATABASE_URL" ]; then
  DB_URL="$DATABASE_URL"
else
  # Fallback to PG* variables
  DB_URL="postgresql://${PGUSER}:${PGPASSWORD}@${PGHOST}:${PGPORT}/${PGDATABASE}?sslmode=require"
fi

# Redis
if [ -n "$REDIS_URL" ]; then
  REDIS_CONN="$REDIS_URL"
else
  REDIS_CONN="redis://${REDIS_URL_HOST:-localhost}:${REDIS_URL_PORT_INT:-6379}"
fi

cat > "${CONFIG}" <<EOF
[server]
host = "0.0.0.0"
port = ${PORT:-8080}

[database]
url = "${DB_URL}"

[redis]
url = "${REDIS_CONN}"

[jwt]
secret = "${WHATOMATE_JWT_SECRET}"

[app]
name = "Whatomate"
environment = "${WHATOMATE_ENV:-production}"
debug = ${WHATOMATE_DEBUG:-false}

[default_admin]
email = "${WHATOMATE_DEFAULT_ADMIN_EMAIL:-admin@example.com}"
password = "${WHATOMATE_DEFAULT_ADMIN_PASSWORD:-admin}"
full_name = "${WHATOMATE_DEFAULT_ADMIN_FULL_NAME:-Admin User}"

[storage]
type = "local"
local_path = "./uploads"
EOF

echo "Config written. Contents:"
sed -n '1,200p' "${CONFIG}"

# Run migrations with simple retry loop in case DB isn't ready yet.
MAX_TRIES=10
TRY=1
SLEEP=5

echo "Running database migrations (up to ${MAX_TRIES} attempts)..."
while [ $TRY -le $MAX_TRIES ]; do
  if ./whatomate server -migrate -config="${CONFIG}"; then
    echo "Migrations succeeded on attempt ${TRY}."
    break
  else
    echo "Migrations failed on attempt ${TRY}. Retrying in ${SLEEP}s..."
    TRY=$((TRY + 1))
    sleep ${SLEEP}
  fi
done

if [ $TRY -gt $MAX_TRIES ]; then
  echo "Migrations failed after ${MAX_TRIES} attempts. Exiting."
  exit 1
fi

echo "Starting Whatomate server..."
exec ./whatomate server -config="${CONFIG}"
