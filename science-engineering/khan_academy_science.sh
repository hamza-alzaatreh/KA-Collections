#!/bin/bash

url="https://www.khanacademy.org/api/v1/topic/"
first_topic='physics'
url=$url$first_topic
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_science.json
python khan_academy_science.py
echo " "
echo " "

for i in {0..13}
do
url="https://www.khanacademy.org/api/v1/topic/"
array=(
	'physics' 'ap-physics-1' 'ap-physics-2' 'chemistry' 'ap-chemistry' 'organic-chemistry' 'biology' 'high-school-biology' 'ap-biology' 
	'cosmology-and-astronomy' 'electrical-engineering' 'health-and-medicine' 'ap-chemistry-beta' 'science-engineering-partners' 
	)
url=$url${array[i]}
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_science.json
python khan_academy_noheaders_science.py
echo " "
echo " "
done

exit 0