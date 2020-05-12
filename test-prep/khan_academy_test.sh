#!/bin/bash

url="https://www.khanacademy.org/api/v1/topic/"
first_topic='sat'
url=$url$first_topic
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_test.json
python khan_academy_test.py
echo " "
echo " "

for i in {0..9}
do
url="https://www.khanacademy.org/api/v1/topic/"
array=(
	'sat' 'lsat' 'praxis-math' 'praxis-writing' 'praxis-reading' 'mcat' 'nclex-rn' 'gmat' 'cahsee-subject' 'iit-jee-subject'
	)
url=$url${array[i]}
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_test.json
python khan_academy_noheaders_test.py
echo " "
echo " "
done

exit 0