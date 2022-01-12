#!/bin/bash
. /Users/kuohao/mybash/tapi/config.sh
header='Content-type':'application/x-www-form-urlencoded'


###
#   使用该脚本获取执行文件路径，避免软连接获取错误
##
SOURCE="$0"
# resolve $SOURCE until the file is no longer a symlink
while [ -h "$SOURCE"  ]; do
    DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd  )"
    SOURCE="$(readlink "$SOURCE")"
    # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    [[ $SOURCE != /*  ]] && SOURCE="$DIR/$SOURCE"
done

# 获取脚本文件路径
DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd  )"


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
    echo "requestUrl=$2" > "${DIR}/config.sh"
  esac
