#!/bin/bash
. /Users/kuohao/mybash/tapi/config.sh
header='Content-type':'application/x-www-form-urlencoded'
case $1 in
  -g)
    curl -s $requestUrl$2 | json
    ;;
  -P)
    curl -s -H $header -d $2 $requestUrl$3 | json
    ;;
  -p)
    curl -s -X PUT -H $header -d $2 $requestUrl$3 | json
    ;;
  -d)
    curl -s -X DELETE $requestUrl$2 | json
    ;;
  -l)
    echo $requestUrl
    ;;
  config)
    echo "requestUrl=$2" > ./config.sh
  esac
