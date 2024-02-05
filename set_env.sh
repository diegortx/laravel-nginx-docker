#!/bin/bash

# Check if APP_ENV is set in the .env file
if [ -f .env ]; then
    APP_ENV=$(grep -e '^\s*APP_ENV' .env | cut -d '=' -f 2 | tr -d '[:space:]')
    case "$APP_ENV" in
        local)
            cp .env.local .env
            ;;
        production)
            cp .env.production .env
            ;;
        development)
            cp .env.development .env
            ;;
        *)
            echo "Unknown APP_ENV: $APP_ENV"
            ;;
    esac
fi

# Run php-fpm
exec php-fpm
