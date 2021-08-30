#!/bin/bash 

host=`host yandex.ru`
if [ $? -ne 0 ]
then echo "error! DNS server is disconnected!"
else echo "All DNS severs are connected!"
fi
ping=`ping -c4 yandex.ru`
if [ $? -ne 0 ]
then echo "error! yandex.ru not ping"
else echo "Ping with yandex.ru is here!"
fi

