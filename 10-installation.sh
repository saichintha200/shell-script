#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then 
   echo  "Please run this command using root access"
   exit 1 #manully exit from the script

else
   echo "You are super user"
fi

dnf install mysql -y

 if [ $? -ne 0 ]
then
    echo "Installation of mysql...FAILURE"
    exit 1
else
    echo "Installation of mysql...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi

echo "is script proceeding?"