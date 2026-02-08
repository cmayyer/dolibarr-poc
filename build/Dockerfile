FROM dolibarr/dolibarr:latest

# Installation des dépendances système en une seule fois
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo pdo_pgsql pgsql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Injection de tes modules personnalisés
COPY ./custom_modules/ /var/www/html/custom/

# Droits d'accès
RUN chown -R www-data:www-data /var/www/html/custom