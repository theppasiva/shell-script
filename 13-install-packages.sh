#!bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 .... $R FAILED$N"
    else
        echo -e "$2 .......$G Success$N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: please run this script with root access $N"
    exit 1
else
    echo "you are root user"
fi

#echo "All the arguments passed :$@"
#git mysql postfix net-tools
# package=git for first time

for package in $@
do
    yum list installed $package &>> $LOGFILE #check installed or not 
    if [ $? -ne 0 ]
    then
    yum install $package -y &>> $LOGFILE #install the package
    VALIDATE $? "iNSTALLATION OF $package" #validate
    else
        echo -e "$package is already installed ...$Y SKIPPING$N"
    fi
done