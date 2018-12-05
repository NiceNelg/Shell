#!/bin/bash

# 清空日志
#> /home/logs/facerecognition.log


#获取当前时间
current=`date "+%Y-%m-%d %H:%M:%S"`
timeStamp=`date -d "$current" +%s`

#删除下发数据
deletefile(){
    for element in `ls $1`
    do
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then
            getdir $dir_or_file
        else
            if [{dif_or_file:0:1} -ne "0" && {dif_or_file:0:10} -lt $2]
			then
				`rm -rf $dif_or_file`
			fi
        fi
    done
}

root_dir="/home/wwwroot/facerecognition/public/temporaryzip"
deletefile $root_dir $timeStamp
