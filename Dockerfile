FROM mautic/mautic:5.1.0-apache

RUN chown -R www-data:www-data /var/www/html

COPY cron-runner.php /var/www/html/app/cron-runner.php

EXPOSE 80
