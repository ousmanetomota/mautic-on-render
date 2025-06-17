FROM mautic/mautic:5.1.0-apache

RUN mkdir -p /var/www/html/media/cron \
    && chown -R www-data:www-data /var/www/html/media

COPY cron-runner.php /var/www/html/media/cron/cron-runner.php

EXPOSE 80
