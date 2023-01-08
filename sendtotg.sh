#!/bin/bash

filename=$Pir1plus_bot
token=$5625994521:AAHxGP7yGRPAGMwjJqB9l1JfMnCnMDZnL80
chatid=$1948484833

curl -v -F "chat_id=${chatid}"  \
-F document=@${filename}.zip \
https://api.telegram.org/bot${token}/sendDocument
			
for i in {1..9}
do
if [ -f ${filename}.z0${i} ]; then
	curl -v -F "chat_id=${chatid}"  \
	-F document=@${filename}.z0${i} \
	https://api.telegram.org/bot${token}/sendDocument
else
	echo "${i} not found"
fi
done
