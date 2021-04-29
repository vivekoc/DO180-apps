#!/bin/sh

sudo podman run -d --name mysql -e MYSQL_DATABASE=items -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_ROOT_PASSWORD=r00tpas55 -v $PWD/work/data:/var/lib/mysql/data -v $PWD/work/init:/var/lib/mysql/init -p 30306:3306 --ip 10.88.100.101 do180/mysql-57-rhel7

sudo sleep 9;

sudo podman run -d --name todoapi -e MYSQL_DATABASE=items -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -p 30080:30080 do180/todonodejs



