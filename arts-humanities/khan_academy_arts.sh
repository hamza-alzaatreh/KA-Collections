#!/bin/bash

url="https://www.khanacademy.org/api/v1/topic/"
first_topic='ap-us-history'
url=$url$first_topic
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_arts.json
python khan_academy_arts.py
echo " "
echo " "

for i in {0..12}
do
url="https://www.khanacademy.org/api/v1/topic/"
array=(
	'ap-us-history' 'ap-us-government-and-politics' 'us-history' 'us-government-and-civics' 'ap-world-history' 
	'ap-art-history' 'grammar' 'world-history' 'art-history' 'hass-storytelling' 'music' 'whp-origins' 'arts-humanities-partners' 
	)
url=$url${array[i]}
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_arts.json
python khan_academy_noheaders_arts.py
echo " "
echo " "
done

exit 0