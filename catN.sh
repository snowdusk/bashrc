#!/bin/sh

#传递的参数为3个，第一个为要打印的起始行，第二个为要打印的结束行，第三个为文件名
function catN() {
	start=$1
	end=$2
	if [ $end -lt $start ]; then
		t=$end
		end=$start
		start=$t
	fi
	filename=$3
	rows=$(($end-$start+1))
	cat $filename | head -n $end | tail -n $rows
}

#入参2个，表示打印某行
if [[ $# == 2 ]];then
	catN $1 $1 $2
else
	#入参3个，表示打印某范围行
	catN $1 $2 $3
fi

