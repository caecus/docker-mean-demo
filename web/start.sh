#!/bin/bash

if [ -z "$NODE_ENV" ]; then
    export NODE_ENV=development
fi

cd /var/www/test
npm install
cd /var/www/test
pm2 start -x $APP --name="app" --no-daemon --watch
