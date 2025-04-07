# Use official PHP-Apache image
FROM php:8.1-apache

# Enable Apache mod_rewrite (important for clean URLs)
RUN a2enmod rewrite

# Copy all project files to Apache web root
COPY . /var/www/html/

# Change ownership (optional, good practice)
RUN chown -R www-data:www-data /var/www/html

# Expose port (Render will use 80 automatically)
EXPOSE 80
