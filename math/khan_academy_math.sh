#!/bin/bash

url="https://www.khanacademy.org/api/v1/topic/"
first_topic='early-math'
url=$url$first_topic
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_math.json
python khan_academy_math.py
echo " "
echo " "

for i in {0..57}
do
url="https://www.khanacademy.org/api/v1/topic/"
array=('early-math' 'cc-kindergarten-math' 'cc-1st-grade-math' 'cc-2nd-grade-math' 'cc-third-grade-math' 
	'cc-fourth-grade-math' 'cc-fifth-grade-math' 'cc-sixth-grade-math' 'cc-seventh-grade-math' 'cc-eighth-grade-math' 
	'arithmetic' 'basic-geo' 'basic-geo' 'pre-algebra' 'algebra-basics' 'algebra' 'geometry' 'algebra2' 'trigonometry' 'statistics-probability' 
	'probability' 'ap-statistics' 'precalculus' 'differential-calculus' 'integral-calculus' 'ap-calculus-ab' 'ap-calculus-bc' 'calculus-1' 
	'calculus-2' 'multivariable-calculus' 'differential-equations' 'linear-algebra' '6th-grade-illustrative-math' '7th-grade-illustrative-math' 
	'8th-grade-illustrative-math' '3rd-engage-ny' '4th-engage-ny' '5th-engage-ny' '6th-engage-ny' '7th-engage-ny' '8th-engage-ny' 'engageny-alg-1' 
	'engageny-geo' 'engageny-alg2' 'engageny-precalc' '3rd-grade-foundations-engageny' '4th-grade-foundations-engageny' '5th-grade-foundations-engageny' 
	'6th-grade-foundations-engageny' '7th-grade-foundations-engageny' '8th-grade-foundations-engageny' 'math1' 'math2' 'math3' 'arithmetic-home' 
	'algebra-home' 'geometry-home' 'math-for-fun-and-glory'
	)
url=$url${array[i]}
echo $url
echo " "
echo " "
sleep 5s
curl $url > khan_math.json
python khan_academy_noheaders_math.py
echo " "
echo " "
done

exit 0