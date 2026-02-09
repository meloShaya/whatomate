# Deploy to Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template?template=https://github.com/shridarpatil/whatomate&envs=WHATOMATE_JWT_SECRET&WHATOMATE_JWT_SECRET_desc=JWT+Secret+for+authentication.+Generate+a+strong+random+key.&WHATOMATE_DEFAULT_ADMIN_EMAIL=admin%40example.com&WHATOMATE_DEFAULT_ADMIN_PASSWORD=admin&WHATOMATE_DEFAULT_ADMIN_FULL_NAME=Admin+User)

## Environment Variables

The following environment variables are required for the application to run properly:

- `WHATOMATE_JWT_SECRET` (required): JWT Secret for authentication. Generate a strong random key.
- `WHATOMATE_DEFAULT_ADMIN_EMAIL`: Default admin email (defaults to admin@example.com)
- `WHATOMATE_DEFAULT_ADMIN_PASSWORD`: Default admin password (defaults to admin)
- `WHATOMATE_DEFAULT_ADMIN_FULL_NAME`: Default admin full name (defaults to Admin User)

## Services

This template will automatically provision:

- PostgreSQL database for data storage
- Redis for caching and pub/sub
- Application service running Whatomate

## Configuration

The application is configured to run in production mode with automatic database migrations on startup.

## Post-Deployment

After deployment:

1. Access your Whatomate instance
2. Log in with the default credentials (admin@example.com / admin)
3. Change the default admin password immediately
4. Configure your WhatsApp Business API credentials in Settings → Accounts