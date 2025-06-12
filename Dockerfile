FROM mautic/mautic:v5-apache

RUN chown -R www-data:www-data /var/www/html

# Uncomment and modify if using custom plugins or themes
# COPY ./plugins /var/www/html/plugins/
# COPY ./themes /var/www/html/themes/

EXPOSE 80