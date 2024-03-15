#!/bin/bash

host="127.0.0.1"
ports=("80" "22" "443")

for port in "${ports[@]}";do
	nc -zv "$host" "$port" > /dev/null 2>&1
	if [ $? -eq 0 ];then
		echo "Porta $port está aberta em $host"
	else
		echo "Porta $port está fechada em $host"
	fi
done

