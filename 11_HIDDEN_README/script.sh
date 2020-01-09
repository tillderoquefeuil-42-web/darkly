#!/bin/bash

keyword="flag"
regex="href=\"[A-z]*"
baseUrl="http://10.11.200.193/.hidden/"
flag=""

total=18279
current=0

searchFlag() {
    local url=$(echo "$1")
    # echo "***** URL is $url *****"

    # if [ ! -z "$flag" -a "$flag" != " " ]; then
    #     return
    # fi

    local response=$(curl -s $url)
    # echo "$response"

    # TEST IF FLAG IS HERE

    if [ "$2" == 1 ]; then
        local tmp=$(echo $response | grep -E "[0-9]+" tmp)

        if [ ! -z "$tmp" ]; then
            flag=$(echo $tmp)
            return
        fi
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
            searchFlag "$url$i" 1
            current=$((current+1))
            echo -ne "Current progress : $(((current * 100) / total))%\r"
        fi
    done

}


searchFlag $baseUrl
echo $current
echo $flag