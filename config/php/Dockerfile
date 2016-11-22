FROM nexylan/php-dev:7.0-fpm

COPY entrypoint.sh /
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

WORKDIR /var/www/code

CMD ["php-fpm"]
