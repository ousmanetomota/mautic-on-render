FROM mautic/mautic:5.1.0-apache

RUN chown -R www-data:www-data /var/www/html

COPY cron-runner.php /var/www/html/cron-runner.php


# Uncomment and modify if using custom plugins or themes
# COPY ./plugins /var/www/html/plugins/
# COPY ./themes /var/www/html/themes/

EXPOSE 80
