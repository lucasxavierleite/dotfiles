#!/bin/bash

token=`cat ${HOME}/.config/github/notifications.token`
count=`curl -u lucas:${token} https://api.github.com/notifications | jq '. | length'`
tooltip=`echo $count`

if [[ "$count" != "0" ]]; then
    echo '{"text":'$count',"tooltip":'$tooltip',"class":"$class"}'
fi
