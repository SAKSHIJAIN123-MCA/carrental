# Use official PHP-Apache image
FROM php:8.1-apache

# Install required PHP extensions (like PDO MySQL)
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    && docker-php-ext-install pdo_mysql

# Enable Apache mod_rewrite (for clean URLs)
RUN a2enmod rewrite

# Copy all project files to Apache web root
COPY . /var/www/html/

# Set proper ownership (optional but good)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 (Render uses this by default)
EXPOSE 80
