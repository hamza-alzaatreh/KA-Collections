#!/bin/bash

url="https://www.khanacademy.org/api/v1/topic/"
first_topic='computer-programming'
url=$url$first_topic
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_computing.json
python khan_academy_computing.py
echo " "
echo " "

for i in {0..3}
do
url="https://www.khanacademy.org/api/v1/topic/"
array=(
	'computer-programming' 'hour-of-code' 'computer-science' 'ap-computer-science-principles'
	)
url=$url${array[i]}
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_computing.json
python khan_academy_noheaders_computing.py
echo " "
echo " "
done

exit 0