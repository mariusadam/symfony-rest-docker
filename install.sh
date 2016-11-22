#!/usr/bin/env bash

base=${PWD}


if [ ! -d ${base}/code/symfony-rest ]; then
    cd ${base}/code && git clone git@github.com:mariusadam/symfony-rest.git symfony-rest
fi

cd ${base}

./configure

docker-compose up -d && docker-compose logs

wait 4
./docker-console php composer.phar install
./docker-console php bin/console doctrine:migrations:migrate