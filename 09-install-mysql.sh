#!bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR: please run this script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysqlll -y

if [ $? -ne 0 ]
then
    echo "EROOR::Installing MYSQL is failed"
    exit 1
else
    echo "installing MYSQL is success"
fi