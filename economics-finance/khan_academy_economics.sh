#!/bin/bash

url="https://www.khanacademy.org/api/v1/topic/"
first_topic='ap-macroeconomics'
url=$url$first_topic
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_economics.json
python khan_academy_economics.py
echo " "
echo " "

for i in {0..4}
do
url="https://www.khanacademy.org/api/v1/topic/"
array=(
	'ap-macroeconomics' 'macroeconomics' 'ap-microeconomics' 'microeconomics' 'core-finance'
	)
url=$url${array[i]}
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_economics.json
python khan_academy_noheaders_economics.py
echo " "
echo " "
done

exit 0