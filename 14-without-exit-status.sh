#!/bin/bash

set -e 

ls -ltr

touch example.txt

echo "Before wrong comand"

asdf

echo "After wrong comand"

cd /tmp

cd /home/centos