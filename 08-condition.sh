#!bin/bash
NUMBER=$1

if [ $NUMBER -gt 100 ]
then
   echo "Given $NUMBER is grater than 100"
else
   echo "Given $NUMBER is not grater than 100"
fi