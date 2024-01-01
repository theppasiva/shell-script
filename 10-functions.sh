#!bin/bash

ID=$(id -u)

validate(){
    if [ $? -ne 0 ]
    then
        echo "EROOR::Installing  is failed"
        exit 1
    else
        echo "installing  is success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR: please run this script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

validate

yum install git -y

validate