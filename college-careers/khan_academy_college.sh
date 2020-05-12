#!/bin/bash

url="https://www.khanacademy.org/api/v1/topic/"
first_topic='college-admissions'
url=$url$first_topic
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_college.json
python khan_academy_college.py
echo " "
echo " "

for i in {0..3}
do
url="https://www.khanacademy.org/api/v1/topic/"
array=(
	'college-admissions' 'career-content' 'personal-finance' 'entrepreneurship2'
	)
url=$url${array[i]}
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_college.json
python khan_academy_noheaders_college.py
echo " "
echo " "
done

exit 0