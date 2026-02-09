## Deployment

### Railway Deployment

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template?template=https://github.com/shridarpatil/whatomate)

#### Manual Railway Deployment

If you prefer to deploy manually to Railway:

1. Push your forked repository to a public GitHub repository
2. Connect your GitHub account to Railway
3. Create a new project and select "Deploy from GitHub"
4. Choose your Whatomate repository
5. Add the following environment variables in the Railway dashboard:

**Required Environment Variables:**
- `WHATOMATE_JWT_SECRET`: A strong, randomly generated secret key for JWT authentication

**Optional Environment Variables:**
- `WHATOMATE_DEFAULT_ADMIN_EMAIL`: Default admin email (default: admin@example.com)
- `WHATOMATE_DEFAULT_ADMIN_PASSWORD`: Default admin password (default: admin)
- `WHATOMATE_DEFAULT_ADMIN_FULL_NAME`: Default admin full name (default: Admin User)
- `WHATOMATE_ENV`: Environment (default: production)
- `WHATOMATE_DEBUG`: Debug mode (default: false)

6. Railway will automatically detect the Dockerfile and build the application
7. Provision PostgreSQL and Redis addons from the Railway marketplace
8. The application will automatically connect to these services using Railway's environment variables

#### Configuration

The Railway deployment is configured to:
- Automatically run database migrations on startup
- Use Railway's PostgreSQL and Redis addons
- Serve the built-in frontend from the same binary
- Use Railway's dynamic PORT assignment
- Run in production mode with appropriate security settings