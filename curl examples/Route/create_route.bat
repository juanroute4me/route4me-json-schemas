@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

::permanently returns "errors":["Point is not allowed for test account"] - needs clarification
curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@new_route_data.json" "%url%/api.v4/optimization_problem.php?api_key=%apikey%"

timeout /t 30