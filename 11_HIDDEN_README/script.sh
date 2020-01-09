#!/bin/bash

keyword="flag"
regex="href=\"[A-z]*"
baseUrl="http://10.11.200.193/.hidden/"
flag=""

searchFlag() {
    local url=$(echo "$1")
    # echo "***** URL is $url *****"

    if [ ! -z "$flag" -a "$flag" != " " ]; then
        return
    fi

    local response=$(curl -s $url)
    # echo "$response"

    # TEST IF FLAG IS HERE
    local tmp=$(echo $response | grep $keyword)

    if [ ! -z "$tmp" ]; then
        echo "FOUND IT"
        echo "URL : $url"
        flag=$(echo $tmp)
        return
    fi

    local array=($( echo $response | grep -o "$regex" | sed "s/href=\"//" | awk 'NF'))
    # echo ${array[*]}

    for i in "${array[@]}"
    do
        # echo $i
        if [ "$i" != "" -a "$i" != "README" ]; then
            # echo "$url$i/"
            searchFlag "$url$i/"
        elif [ "$i" != "" -a "$i" == "README" ]; then
            # echo "$url$i"
            searchFlag "$url$i"
        fi
    done

    # echo "$array" | while read line ; do
    #     echo "$line"
    #     if [ "$line" != "" -a "$line" != "README" ]; then
    #         # echo "$url$line/"
    #         searchFlag "$url$line/"
    #     elif [ "$line" != "" -a "$line" == "README" ]; then
    #         # echo "$url$line"
    #         searchFlag "$url$line"
    #     fi
    # done
}


searchFlag $baseUrl
echo $flag