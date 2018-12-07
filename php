# laravel is not loading .env file
php artisan config:clear
php artisan cache:clear
php artisan config:cache

# upload file size
nano vim /etc/php5/fpm/php.ini
upload_max_filesize = 100M
post_max_size = 100M
