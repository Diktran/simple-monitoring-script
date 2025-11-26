#!/bin/bash

#Выводим текущую дату
current_date=$(date "+%Y-%m-%d %H:%M:%S")
echo "Check performed at: $current_date"

#Проверяем доступность хоста

ping -c 3 google.com
echo  "$?"
#Записываем результат в лог

if [ $? -eq 0]; then
	echo "$current_date - SUCCESS: Host google.com is reachable" >> ping_log.txt
else
	echo "$current_date -  FAILED: Host google.com is unreacheble" >> ping_log.txt
fi

echo "Result saved to ping_log.txt"
