#!/bin/bash

composer install; \
php artisan key:generate; \
php artisan migrate; \
php artisan db:seed --class=LocationSeeder; \
php artisan db:seed --class=UserSeeder