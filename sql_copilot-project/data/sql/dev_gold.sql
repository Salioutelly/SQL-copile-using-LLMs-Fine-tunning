SELECT count(*) FROM head WHERE age  >  56;	department_management
SELECT name ,  born_state ,  age FROM head ORDER BY age;	department_management
SELECT creation ,  name ,  budget_in_billions FROM department;	department_management
SELECT max(budget_in_billions) ,  min(budget_in_billions) FROM department;	department_management
SELECT avg(num_employees) FROM department WHERE ranking BETWEEN 10 AND 15;	department_management
SELECT name FROM head WHERE born_state != 'California';	department_management
SELECT DISTINCT T1.creation FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T3.born_state  =  'Alabama';	department_management
SELECT born_state FROM head GROUP BY born_state HAVING count(*)  >=  3;	department_management
SELECT creation FROM department GROUP BY creation ORDER BY count(*) DESC LIMIT 1;	department_management
SELECT T1.name ,  T1.num_employees FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id WHERE T2.temporary_acting  =  'Yes';	department_management
SELECT count(DISTINCT temporary_acting) FROM management;	department_management
SELECT count(*) FROM department WHERE department_id NOT IN (SELECT department_id FROM management);	department_management
SELECT DISTINCT T1.age FROM management AS T2 JOIN head AS T1 ON T1.head_id  =  T2.head_id WHERE T2.temporary_acting  =  'Yes';	department_management
SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T1.name  =  'Treasury' INTERSECT SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id JOIN head AS T3 ON T2.head_id  =  T3.head_id WHERE T1.name  =  'Homeland Security';	department_management
SELECT T1.department_id ,  T1.name ,  count(*) FROM management AS T2 JOIN department AS T1 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id HAVING count(*)  >  1;	department_management
SELECT head_id ,  name FROM head WHERE name LIKE '%Ha%';	department_management
SELECT count(*) FROM farm;	farm
SELECT count(*) FROM farm;	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC;	farm
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC;	farm
SELECT Hosts FROM farm_competition WHERE Theme !=  'Aliens';	farm
SELECT Hosts FROM farm_competition WHERE Theme !=  'Aliens';	farm
SELECT Theme FROM farm_competition ORDER BY YEAR ASC;	farm
SELECT Theme FROM farm_competition ORDER BY YEAR ASC;	farm
SELECT avg(Working_Horses) FROM farm WHERE Total_Horses  >  5000;	farm
SELECT avg(Working_Horses) FROM farm WHERE Total_Horses  >  5000;	farm
SELECT max(Cows) ,  min(Cows) FROM farm;	farm
SELECT max(Cows) ,  min(Cows) FROM farm;	farm
SELECT count(DISTINCT Status) FROM city;	farm
SELECT count(DISTINCT Status) FROM city;	farm
SELECT Official_Name FROM city ORDER BY Population DESC;	farm
SELECT Official_Name FROM city ORDER BY Population DESC;	farm
SELECT Official_Name ,  Status FROM city ORDER BY Population DESC LIMIT 1;	farm
SELECT Official_Name ,  Status FROM city ORDER BY Population DESC LIMIT 1;	farm
SELECT T2.Year ,  T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID;	farm
SELECT T2.Year ,  T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID;	farm
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*)  >  1;	farm
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*)  >  1;	farm
SELECT T1.Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1;	farm
SELECT T1.Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1;	farm
SELECT T2.Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID WHERE T1.Population  >  1000;	farm
SELECT T2.Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID WHERE T1.Population  >  1000;	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status;	farm
SELECT Status ,  avg(Population) FROM city GROUP BY Status;	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC;	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC;	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1;	farm
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1;	farm
SELECT Official_Name FROM city WHERE City_ID NOT IN (SELECT Host_city_ID FROM farm_competition);	farm
SELECT Official_Name FROM city WHERE City_ID NOT IN (SELECT Host_city_ID FROM farm_competition);	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500;	farm
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500;	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500;	farm
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500;	farm
SELECT Census_Ranking FROM city WHERE Status !=  "Village";	farm
SELECT Census_Ranking FROM city WHERE Status !=  "Village";	farm
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;	student_assessment
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;	student_assessment
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1;	student_assessment
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1;	student_assessment
SELECT T2.first_name ,  T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id;	student_assessment
SELECT T2.first_name ,  T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id;	student_assessment
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance);	student_assessment
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance);	student_assessment
SELECT student_id FROM student_course_attendance;	student_assessment
SELECT student_id FROM student_course_attendance;	student_assessment
SELECT T1.student_id ,  T2.course_name FROM student_course_registrations AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id;	student_assessment
SELECT T2.student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1;	student_assessment
SELECT T2.student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.registration_date DESC LIMIT 1;	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "English";	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "English";	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171;	student_assessment
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171;	student_assessment
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.person_id = T2.candidate_id WHERE T1.email_address = "stanley.monahan@example.org";	student_assessment
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.person_id = T2.candidate_id WHERE T1.email_address = "stanley.monahan@example.org";	student_assessment
SELECT candidate_id FROM candidate_assessments ORDER BY assessment_date DESC LIMIT 1;	student_assessment
SELECT candidate_id FROM candidate_assessments ORDER BY assessment_date DESC LIMIT 1;	student_assessment
SELECT T1.student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;	student_assessment
SELECT T1.student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;	student_assessment
SELECT T1.student_id ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id;	student_assessment
SELECT T1.student_id ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id;	student_assessment
SELECT T3.course_name ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id;	student_assessment
SELECT T3.course_name ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id;	student_assessment
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass";	student_assessment
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass";	student_assessment
SELECT T3.cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.person_id WHERE T2.asessment_outcome_code = "Fail";	student_assessment
SELECT T3.cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.person_id WHERE T2.asessment_outcome_code = "Fail";	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id  =  301;	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id  =  301;	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_attendance DESC LIMIT 1;	student_assessment
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_attendance DESC LIMIT 1;	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id;	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id;	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.student_id;	student_assessment
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.student_id;	student_assessment
SELECT course_name FROM courses ORDER BY course_name;	student_assessment
SELECT course_name FROM courses ORDER BY course_name;	student_assessment
SELECT first_name FROM people ORDER BY first_name;	student_assessment
SELECT first_name FROM people ORDER BY first_name;	student_assessment
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance;	student_assessment
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance;	student_assessment
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121;	student_assessment
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121;	student_assessment
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance);	student_assessment
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance);	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date;	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date;	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.date_of_attendance;	student_assessment
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.date_of_attendance;	student_assessment
SELECT date FROM weather WHERE max_temperature_f  >  85;	bike_1
SELECT date FROM weather WHERE max_temperature_f  >  85;	bike_1
SELECT name FROM station WHERE lat  <  37.5;	bike_1
SELECT name FROM station WHERE lat  <  37.5;	bike_1
SELECT city ,  max(lat) FROM station GROUP BY city;	bike_1
SELECT city ,  max(lat) FROM station GROUP BY city;	bike_1
SELECT start_station_name ,  end_station_name FROM trip ORDER BY id LIMIT 3;	bike_1
SELECT start_station_name ,  end_station_name FROM trip ORDER BY id LIMIT 3;	bike_1
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose";	bike_1
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose";	bike_1
SELECT id FROM trip ORDER BY duration LIMIT 1;	bike_1
SELECT id FROM trip ORDER BY duration LIMIT 1;	bike_1
SELECT sum(duration) ,  max(duration) FROM trip WHERE bike_id  =  636;	bike_1
SELECT sum(duration) ,  max(duration) FROM trip WHERE bike_id  =  636;	bike_1
SELECT zip_code  ,  avg(mean_temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code;	bike_1
SELECT zip_code  ,  avg(mean_temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code;	bike_1
SELECT count(DISTINCT bike_id) FROM trip;	bike_1
SELECT count(DISTINCT bike_id) FROM trip;	bike_1
SELECT count(DISTINCT city) FROM station;	bike_1
SELECT count(DISTINCT city) FROM station;	bike_1
SELECT COUNT(*) FROM station WHERE city  =  "Mountain View";	bike_1
SELECT COUNT(*) FROM station WHERE city  =  "Mountain View";	bike_1
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  =  7;	bike_1
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  =  7;	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1;	bike_1
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1;	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1;	bike_1
SELECT bike_id FROM trip WHERE zip_code  =  94002 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1;	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8;	bike_1
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8;	bike_1
SELECT T1.lat ,  T1.long ,  T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id ORDER BY T2.duration LIMIT 1;	bike_1
SELECT T1.lat ,  T1.long ,  T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id ORDER BY T2.duration LIMIT 1;	bike_1
SELECT id FROM station WHERE city  =  "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available)  >  10;	bike_1
SELECT id FROM station WHERE city  =  "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available)  >  10;	bike_1
SELECT T1.name ,  T1.id FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(T2.bikes_available)  >  14 UNION SELECT name ,  id FROM station WHERE installation_date LIKE "12/%";	bike_1
SELECT T1.name ,  T1.id FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(T2.bikes_available)  >  14 UNION SELECT name ,  id FROM station WHERE installation_date LIKE "12/%";	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3;	bike_1
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3;	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1;	bike_1
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_sea_level_pressure_inches) LIMIT 1;	bike_1
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city  =  "Palo Alto");	bike_1
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city  =  "Palo Alto");	bike_1
SELECT avg(long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(bikes_available)  >  10);	bike_1
SELECT avg(long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(bikes_available)  >  10);	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80;	bike_1
SELECT date ,  zip_code FROM weather WHERE max_temperature_f  >=  80;	bike_1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.zip_code  =  T2.zip_code GROUP BY T2.zip_code HAVING avg(T2.mean_temperature_f)  >  60;	bike_1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.zip_code  =  T2.zip_code GROUP BY T2.zip_code HAVING avg(T2.mean_temperature_f)  >  60;	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code;	bike_1
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code;	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107);	bike_1
SELECT date ,  zip_code FROM weather WHERE min_dew_point_f  <  (SELECT min(min_dew_point_f) FROM weather WHERE zip_code  =  94107);	bike_1
SELECT T1.id ,  T2.installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id;	bike_1
SELECT T1.id ,  T2.installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id;	bike_1
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.start_station_id  =  T2.id ORDER BY T2.dock_count DESC LIMIT 1;	bike_1
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.start_station_id  =  T2.id ORDER BY T2.dock_count DESC LIMIT 1;	bike_1
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id WHERE T2.city !=  "San Francisco";	bike_1
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id WHERE T2.city != "San Francisco";	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain";	bike_1
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain";	bike_1
SELECT id FROM station WHERE lat  >  37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(bikes_available)  <  7;	bike_1
SELECT id FROM station WHERE lat  >  37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(bikes_available)  <  7;	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available)  >  10 EXCEPT SELECT name FROM station WHERE city  =  "San Jose";	bike_1
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available)  >  10 EXCEPT SELECT name FROM station WHERE city  =  "San Jose";	bike_1
SELECT name ,  lat ,  city FROM station ORDER BY lat LIMIT 1;	bike_1
SELECT name ,  lat ,  city FROM station ORDER BY lat LIMIT 1;	bike_1
SELECT date ,  mean_temperature_f ,  mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3;	bike_1
SELECT date ,  mean_temperature_f ,  mean_humidity FROM weather ORDER BY max_gust_speed_mph DESC LIMIT 3;	bike_1
SELECT city ,  COUNT(*) FROM station GROUP BY city HAVING COUNT(*)  >=  15;	bike_1
SELECT city ,  COUNT(*) FROM station GROUP BY city HAVING COUNT(*)  >=  15;	bike_1
SELECT start_station_id ,  start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*)  >=  200;	bike_1
SELECT start_station_id ,  start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*)  >=  200;	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_visibility_miles)  <  10;	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_visibility_miles)  <  10;	bike_1
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC;	bike_1
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC;	bike_1
SELECT date ,  cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5;	bike_1
SELECT date ,  cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5;	bike_1
SELECT id ,  duration FROM trip ORDER BY duration DESC LIMIT 3;	bike_1
SELECT id ,  duration FROM trip ORDER BY duration DESC LIMIT 3;	bike_1
SELECT T1.name ,  T1.long ,  avg(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id GROUP BY T2.start_station_id;	bike_1
SELECT T1.name ,  T1.long ,  avg(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id GROUP BY T2.start_station_id;	bike_1
SELECT T1.name ,  T1.lat ,  min(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.end_station_id GROUP BY T2.end_station_id;	bike_1
SELECT T1.name ,  T1.lat ,  min(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.end_station_id GROUP BY T2.end_station_id;	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration  <  100;	bike_1
SELECT DISTINCT start_station_name FROM trip WHERE duration  <  100;	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f  >=  70;	bike_1
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_dew_point_f  >=  70;	bike_1
SELECT id FROM trip WHERE duration  >=  (SELECT avg(duration) FROM trip WHERE zip_code  =  94103);	bike_1
SELECT id FROM trip WHERE duration  >=  (SELECT avg(duration) FROM trip WHERE zip_code  =  94103);	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31;	bike_1
SELECT date FROM weather WHERE mean_sea_level_pressure_inches BETWEEN 30.3 AND 31;	bike_1
SELECT date ,  max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1;	bike_1
SELECT date ,  max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1;	bike_1
SELECT DISTINCT T1.id ,  T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  >  12;	bike_1
SELECT DISTINCT T1.id ,  T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  >  12;	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_humidity)  <  70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*)  >=  100;	bike_1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_humidity)  <  70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*)  >=  100;	bike_1
SELECT name FROM station WHERE city  =  "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*)  >  100;	bike_1
SELECT name FROM station WHERE city  =  "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*)  >  100;	bike_1
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id  =  T2.start_station_id AND T2.id  =  T4.id AND T3.id  =  T4.end_station_id WHERE T1.city  =  "Mountain View" AND T3.city  =  "Palo Alto";	bike_1
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id  =  T2.start_station_id AND T2.id  =  T4.id AND T3.id  =  T4.end_station_id WHERE T1.city  =  "Mountain View" AND T3.city  =  "Palo Alto";	bike_1
SELECT avg(T1.lat) ,  avg(T1.long) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id;	bike_1
SELECT avg(T1.lat) ,  avg(T1.long) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id;	bike_1
SELECT count(*) FROM book;	book_2
SELECT Writer FROM book ORDER BY Writer ASC;	book_2
SELECT Title FROM book ORDER BY Issues ASC;	book_2
SELECT Title FROM book WHERE Writer != "Elaine Lee";	book_2
SELECT Title ,  Issues FROM book;	book_2
SELECT Publication_Date FROM publication ORDER BY Price DESC;	book_2
SELECT DISTINCT Publisher FROM publication WHERE Price  >  5000000;	book_2
SELECT Publisher FROM publication ORDER BY Price DESC LIMIT 1;	book_2
SELECT Publication_Date FROM publication ORDER BY Price ASC LIMIT 3;	book_2
SELECT T1.Title ,  T2.Publication_Date FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID;	book_2
SELECT T1.Writer FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID WHERE T2.Price  >  4000000;	book_2
SELECT T1.Title FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T2.Price DESC;	book_2
SELECT Publisher FROM publication GROUP BY Publisher HAVING COUNT(*)  >  1;	book_2
SELECT Publisher ,  COUNT(*) FROM publication GROUP BY Publisher;	book_2
SELECT Publication_Date FROM publication GROUP BY Publication_Date ORDER BY COUNT(*) DESC LIMIT 1;	book_2
SELECT Writer FROM book GROUP BY Writer HAVING COUNT(*)  >  1;	book_2
SELECT Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM publication);	book_2
SELECT Publisher FROM publication WHERE Price  >  10000000 INTERSECT SELECT Publisher FROM publication WHERE Price  <  5000000;	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication;	book_2
SELECT COUNT (DISTINCT Publication_Date) FROM publication;	book_2
SELECT Price FROM publication WHERE Publisher  =  "Person" OR Publisher  =  "Wiley";	book_2
SELECT count(*) FROM actor;	musical
SELECT count(*) FROM actor;	musical
SELECT Name FROM actor ORDER BY Name ASC;	musical
SELECT Name FROM actor ORDER BY Name ASC;	musical
SELECT Character ,  Duration FROM actor;	musical
SELECT Character ,  Duration FROM actor;	musical
SELECT Name FROM actor WHERE Age != 20;	musical
SELECT Name FROM actor WHERE Age != 20;	musical
SELECT Character FROM actor ORDER BY age DESC;	musical
SELECT Character FROM actor ORDER BY age DESC;	musical
SELECT Duration FROM actor ORDER BY Age DESC LIMIT 1;	musical
SELECT Duration FROM actor ORDER BY Age DESC LIMIT 1;	musical
SELECT Name FROM musical WHERE Nominee  =  "Bob Fosse";	musical
SELECT Name FROM musical WHERE Nominee  =  "Bob Fosse";	musical
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award";	musical
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award";	musical
SELECT T1.Name ,  T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID;	musical
SELECT T1.Name ,  T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID;	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID WHERE T2.Name  =  "The Phantom of the Opera";	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID WHERE T2.Name  =  "The Phantom of the Opera";	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC;	musical
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC;	musical
SELECT T2.Name ,  COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID;	musical
SELECT T2.Name ,  COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID;	musical
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*)  >=  3;	musical
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*)  >=  3;	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee;	musical
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee;	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1;	musical
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1;	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1;	musical
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1;	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2;	musical
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*)  >  2;	musical
SELECT Name FROM musical WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor);	musical
SELECT Name FROM musical WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor);	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award";	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award";	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks";	musical
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" OR Award  =  "Cleavant Derricks";	musical
SELECT email FROM user_profiles WHERE name  =  'Mary';	twitter_1
SELECT partitionid FROM user_profiles WHERE name  =  'Iron Man';	twitter_1
SELECT count(*) FROM user_profiles;	twitter_1
SELECT count(*) FROM follows;	twitter_1
SELECT count(*) FROM follows GROUP BY f1;	twitter_1
SELECT count(*) FROM tweets;	twitter_1
SELECT count(DISTINCT UID) FROM tweets;	twitter_1
SELECT name ,  email FROM user_profiles WHERE name LIKE '%Swift%';	twitter_1
SELECT name FROM user_profiles WHERE email LIKE '%superstar%' OR email LIKE '%edu%';	twitter_1
SELECT text FROM tweets WHERE text LIKE '%intern%';	twitter_1
SELECT name ,  email FROM user_profiles WHERE followers  >  1000;	twitter_1
SELECT T1.name FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  (SELECT count(*) FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 WHERE T1.name  =  'Tyler Swift');	twitter_1
SELECT T1.name ,  T1.email FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  1;	twitter_1
SELECT T1.name FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1;	twitter_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" INTERSECT SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Susan";	twitter_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" OR T1.name  =  "Susan";	twitter_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 1;	twitter_1
SELECT name ,  email FROM user_profiles ORDER BY followers LIMIT 1;	twitter_1
SELECT name ,  followers FROM user_profiles ORDER BY followers DESC;	twitter_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 5;	twitter_1
SELECT text FROM tweets ORDER BY createdate;	twitter_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid;	twitter_1
SELECT T1.name ,  T1.partitionid FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  <  2;	twitter_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1;	twitter_1
SELECT avg(followers) FROM user_profiles WHERE UID NOT IN (SELECT UID FROM tweets);	twitter_1
SELECT avg(followers) FROM user_profiles WHERE UID IN (SELECT UID FROM tweets);	twitter_1
SELECT max(followers) ,  sum(followers) FROM user_profiles;	twitter_1
SELECT distinct(catalog_entry_name) FROM catalog_contents;	product_catalog
SELECT distinct(catalog_entry_name) FROM catalog_contents;	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*)  >  3;	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*)  >  3;	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribute_name  =  "Green";	product_catalog
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribute_name  =  "Green";	product_catalog
SELECT catalog_level_name ,  catalog_level_number FROM Catalog_Structure WHERE catalog_level_number BETWEEN 5 AND 10;	product_catalog
SELECT catalog_level_name ,  catalog_level_number FROM Catalog_Structure WHERE catalog_level_number BETWEEN 5 AND 10;	product_catalog
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%";	product_catalog
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%";	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1;	product_catalog
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1;	product_catalog
SELECT t1.catalog_name ,  t1.date_of_publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.catalog_id  =  t2.catalog_id WHERE catalog_level_number  >  5;	product_catalog
SELECT t1.catalog_name ,  t1.date_of_publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.catalog_id  =  t2.catalog_id WHERE catalog_level_number  >  5;	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.attribute_value  =  (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1);	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.attribute_value  =  (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1);	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1;	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1;	product_catalog
SELECT t2.catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.catalog_level_number  =  t2.catalog_level_number ORDER BY t1.price_in_dollars LIMIT 1;	product_catalog
SELECT t2.catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.catalog_level_number  =  t2.catalog_level_number ORDER BY t1.price_in_dollars LIMIT 1;	product_catalog
SELECT avg(price_in_euros) ,  min(price_in_euros) FROM catalog_contents;	product_catalog
SELECT avg(price_in_euros) ,  min(price_in_euros) FROM catalog_contents;	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1;	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1;	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1;	product_catalog
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1;	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE product_stock_number LIKE "2%";	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE product_stock_number LIKE "2%";	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.catalog_level_number  =  "8";	product_catalog
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id  =  t2.catalog_entry_id WHERE t2.catalog_level_number  =  "8";	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH  <  3 OR width  >  5;	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH  <  3 OR width  >  5;	product_catalog
SELECT t1.attribute_name ,  t1.attribute_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribute_id  =  t2.attribute_id WHERE t2.attribute_value  =  0;	product_catalog
SELECT t1.attribute_name ,  t1.attribute_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribute_id  =  t2.attribute_id WHERE t2.attribute_value  =  0;	product_catalog
SELECT catalog_entry_name ,  capacity FROM Catalog_Contents WHERE price_in_dollars  >  700;	product_catalog
SELECT catalog_entry_name ,  capacity FROM Catalog_Contents WHERE price_in_dollars  >  700;	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1;	product_catalog
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1;	product_catalog
SELECT count(*) FROM catalog_contents;	product_catalog
SELECT count(*) FROM catalog_contents;	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE next_entry_id  >  8;	product_catalog
SELECT catalog_entry_name FROM catalog_contents WHERE next_entry_id  >  8;	product_catalog
SELECT count(*) FROM Aircraft;	flight_1
SELECT count(*) FROM Aircraft;	flight_1
SELECT name ,  distance FROM Aircraft;	flight_1
SELECT name ,  distance FROM Aircraft;	flight_1
SELECT aid FROM Aircraft WHERE distance  >  1000;	flight_1
SELECT aid FROM Aircraft WHERE distance  >  1000;	flight_1
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000;	flight_1
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000;	flight_1
SELECT name ,  distance FROM Aircraft WHERE aid  =  12;	flight_1
SELECT name ,  distance FROM Aircraft WHERE aid  =  12;	flight_1
SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft;	flight_1
SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft;	flight_1
SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1;	flight_1
SELECT aid ,  name FROM Aircraft ORDER BY distance DESC LIMIT 1;	flight_1
SELECT name FROM Aircraft ORDER BY distance LIMIT 3;	flight_1
SELECT name FROM Aircraft ORDER BY distance LIMIT 3;	flight_1
SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft);	flight_1
SELECT name FROM Aircraft WHERE distance  >  (SELECT avg(distance) FROM Aircraft);	flight_1
SELECT count(*) FROM Employee;	flight_1
SELECT count(*) FROM Employee;	flight_1
SELECT name ,  salary FROM Employee ORDER BY salary;	flight_1
SELECT name ,  salary FROM Employee ORDER BY salary;	flight_1
SELECT eid FROM Employee WHERE salary  >  100000;	flight_1
SELECT eid FROM Employee WHERE salary  >  100000;	flight_1
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000;	flight_1
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000;	flight_1
SELECT name ,  salary FROM Employee WHERE eid  =  242518965;	flight_1
SELECT name ,  salary FROM Employee WHERE eid  =  242518965;	flight_1
SELECT avg(salary) ,  max(salary) FROM Employee;	flight_1
SELECT avg(salary) ,  max(salary) FROM Employee;	flight_1
SELECT eid ,  name FROM Employee ORDER BY salary DESC LIMIT 1;	flight_1
SELECT eid ,  name FROM Employee ORDER BY salary DESC LIMIT 1;	flight_1
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3;	flight_1
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3;	flight_1
SELECT name FROM Employee WHERE salary  >  (SELECT avg(salary) FROM Employee);	flight_1
SELECT name FROM Employee WHERE salary  >  (SELECT avg(salary) FROM Employee);	flight_1
SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young';	flight_1
SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young';	flight_1
SELECT count(*) FROM Flight;	flight_1
SELECT count(*) FROM Flight;	flight_1
SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin;	flight_1
SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin;	flight_1
SELECT flno FROM Flight WHERE origin  =  "Los Angeles";	flight_1
SELECT flno FROM Flight WHERE origin  =  "Los Angeles";	flight_1
SELECT origin FROM Flight WHERE destination  =  "Honolulu";	flight_1
SELECT origin FROM Flight WHERE destination  =  "Honolulu";	flight_1
SELECT departure_date ,  arrival_date FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu";	flight_1
SELECT departure_date ,  arrival_date FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu";	flight_1
SELECT flno FROM Flight WHERE distance  >  2000;	flight_1
SELECT flno FROM Flight WHERE distance  >  2000;	flight_1
SELECT avg(price) FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu";	flight_1
SELECT avg(price) FROM Flight WHERE origin  =  "Los Angeles" AND destination  =  "Honolulu";	flight_1
SELECT origin ,  destination FROM Flight WHERE price  >  300;	flight_1
SELECT origin ,  destination FROM Flight WHERE price  >  300;	flight_1
SELECT flno ,  distance FROM Flight ORDER BY price DESC LIMIT 1;	flight_1
SELECT flno ,  distance FROM Flight ORDER BY price DESC LIMIT 1;	flight_1
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3;	flight_1
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3;	flight_1
SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles";	flight_1
SELECT avg(distance) ,  avg(price) FROM Flight WHERE origin  =  "Los Angeles";	flight_1
SELECT origin ,  count(*) FROM Flight GROUP BY origin;	flight_1
SELECT origin ,  count(*) FROM Flight GROUP BY origin;	flight_1
SELECT destination ,  count(*) FROM Flight GROUP BY destination;	flight_1
SELECT destination ,  count(*) FROM Flight GROUP BY destination;	flight_1
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1;	flight_1
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1;	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T1.flno  =  99;	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T1.flno  =  99;	flight_1
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T2.name  =  "Airbus A340-300";	flight_1
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid WHERE T2.name  =  "Airbus A340-300";	flight_1
SELECT T2.name ,  count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid;	flight_1
SELECT T2.name ,  count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid;	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid HAVING count(*)  >= 2;	flight_1
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid  =  T2.aid GROUP BY T1.aid HAVING count(*)  >= 2;	flight_1
SELECT count(DISTINCT eid) FROM Certificate;	flight_1
SELECT count(DISTINCT eid) FROM Certificate;	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate;	flight_1
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate;	flight_1
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T1.name  =  "John Williams";	flight_1
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T1.name  =  "John Williams";	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800";	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800";	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Airbus A340-300";	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Airbus A340-300";	flight_1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800";	flight_1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800";	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid WHERE T2.distance  >  5000 GROUP BY T1.aid ORDER BY count(*)  >=  5;	flight_1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid WHERE T2.distance  >  5000 GROUP BY T1.aid ORDER BY count(*)  >=  5;	flight_1
SELECT T1.name ,  T1.salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT T1.name ,  T1.salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.distance  >  5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.distance  >  5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1;	flight_1
SELECT count(DISTINCT allergy) FROM Allergy_type;	allergy_1
SELECT count(DISTINCT allergy) FROM Allergy_type;	allergy_1
SELECT count(DISTINCT allergytype) FROM Allergy_type;	allergy_1
SELECT count(DISTINCT allergytype) FROM Allergy_type;	allergy_1
SELECT DISTINCT allergytype FROM Allergy_type;	allergy_1
SELECT DISTINCT allergytype FROM Allergy_type;	allergy_1
SELECT allergy ,  allergytype FROM Allergy_type;	allergy_1
SELECT allergy ,  allergytype FROM Allergy_type;	allergy_1
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype  =  "food";	allergy_1
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype  =  "food";	allergy_1
SELECT allergytype FROM Allergy_type WHERE allergy  =  "Cat";	allergy_1
SELECT allergytype FROM Allergy_type WHERE allergy  =  "Cat";	allergy_1
SELECT count(*) FROM Allergy_type WHERE allergytype  =  "animal";	allergy_1
SELECT count(*) FROM Allergy_type WHERE allergytype  =  "animal";	allergy_1
SELECT allergytype ,  count(*) FROM Allergy_type GROUP BY allergytype;	allergy_1
SELECT allergytype ,  count(*) FROM Allergy_type GROUP BY allergytype;	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1;	allergy_1
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1;	allergy_1
SELECT count(*) FROM Student;	allergy_1
SELECT count(*) FROM Student;	allergy_1
SELECT Fname ,  Lname FROM Student;	allergy_1
SELECT Fname ,  Lname FROM Student;	allergy_1
SELECT count(DISTINCT advisor) FROM Student;	allergy_1
SELECT count(DISTINCT advisor) FROM Student;	allergy_1
SELECT DISTINCT Major FROM Student;	allergy_1
SELECT DISTINCT Major FROM Student;	allergy_1
SELECT DISTINCT city_code FROM Student;	allergy_1
SELECT DISTINCT city_code FROM Student;	allergy_1
SELECT Fname ,  Lname ,  Age FROM Student WHERE Sex  =  'F';	allergy_1
SELECT Fname ,  Lname ,  Age FROM Student WHERE Sex  =  'F';	allergy_1
SELECT StuID FROM Student WHERE Sex  =  'M';	allergy_1
SELECT StuID FROM Student WHERE Sex  =  'M';	allergy_1
SELECT count(*) FROM Student WHERE age  =  18;	allergy_1
SELECT count(*) FROM Student WHERE age  =  18;	allergy_1
SELECT StuID FROM Student WHERE age  >  20;	allergy_1
SELECT StuID FROM Student WHERE age  >  20;	allergy_1
SELECT city_code FROM Student WHERE LName  =  "Kim";	allergy_1
SELECT city_code FROM Student WHERE LName  =  "Kim";	allergy_1
SELECT Advisor FROM Student WHERE StuID  =  1004;	allergy_1
SELECT Advisor FROM Student WHERE StuID  =  1004;	allergy_1
SELECT count(*) FROM Student WHERE city_code  =  "HKG" OR city_code  =  "CHI";	allergy_1
SELECT count(*) FROM Student WHERE city_code  =  "HKG" OR city_code  =  "CHI";	allergy_1
SELECT min(age) ,  avg(age) ,  max(age) FROM Student;	allergy_1
SELECT min(age) ,  avg(age) ,  max(age) FROM Student;	allergy_1
SELECT LName FROM Student WHERE age  =  (SELECT min(age) FROM Student);	allergy_1
SELECT LName FROM Student WHERE age  =  (SELECT min(age) FROM Student);	allergy_1
SELECT StuID FROM Student WHERE age  =  (SELECT max(age) FROM Student);	allergy_1
SELECT StuID FROM Student WHERE age  =  (SELECT max(age) FROM Student);	allergy_1
SELECT major ,  count(*) FROM Student GROUP BY major;	allergy_1
SELECT major ,  count(*) FROM Student GROUP BY major;	allergy_1
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT age ,  count(*) FROM Student GROUP BY age;	allergy_1
SELECT age ,  count(*) FROM Student GROUP BY age;	allergy_1
SELECT avg(age) ,  sex FROM Student GROUP BY sex;	allergy_1
SELECT avg(age) ,  sex FROM Student GROUP BY sex;	allergy_1
SELECT city_code ,  count(*) FROM Student GROUP BY city_code;	allergy_1
SELECT city_code ,  count(*) FROM Student GROUP BY city_code;	allergy_1
SELECT advisor ,  count(*) FROM Student GROUP BY advisor;	allergy_1
SELECT advisor ,  count(*) FROM Student GROUP BY advisor;	allergy_1
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT count(*) FROM Has_allergy WHERE Allergy  =  "Cat";	allergy_1
SELECT count(*) FROM Has_allergy WHERE Allergy  =  "Cat";	allergy_1
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*)  >=  2;	allergy_1
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*)  >=  2;	allergy_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy;	allergy_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy;	allergy_1
SELECT count(*) FROM has_allergy AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.sex  =  "F" AND T1.allergy  =  "Milk" OR T1.allergy  =  "Eggs";	allergy_1
SELECT count(*) FROM has_allergy AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.sex  =  "F" AND T1.allergy  =  "Milk" OR T1.allergy  =  "Eggs";	allergy_1
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food";	allergy_1
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food";	allergy_1
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1;	allergy_1
SELECT Allergy ,  count(*) FROM Has_allergy GROUP BY Allergy;	allergy_1
SELECT Allergy ,  count(*) FROM Has_allergy GROUP BY Allergy;	allergy_1
SELECT T2.allergytype ,  count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy GROUP BY T2.allergytype;	allergy_1
SELECT T2.allergytype ,  count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy GROUP BY T2.allergytype;	allergy_1
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat");	allergy_1
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat");	allergy_1
SELECT T1.Allergy ,  T1.AllergyType FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy  =  T2.Allergy JOIN Student AS T3 ON T3.StuID  =  T2.StuID WHERE T3.Fname  =  "Lisa" ORDER BY T1.Allergy;	allergy_1
SELECT T1.Allergy ,  T1.AllergyType FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy  =  T2.Allergy JOIN Student AS T3 ON T3.StuID  =  T2.StuID WHERE T3.Fname  =  "Lisa" ORDER BY T1.Allergy;	allergy_1
SELECT fname ,  sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat");	allergy_1
SELECT fname ,  sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat");	allergy_1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "animal");	allergy_1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "animal");	allergy_1
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food");	allergy_1
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food");	allergy_1
SELECT count(*) FROM Student WHERE sex  =  "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food");	allergy_1
SELECT count(*) FROM Student WHERE sex  =  "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food");	allergy_1
SELECT DISTINCT T1.fname ,  T1.city_code FROM Student AS T1 JOIN Has_Allergy AS T2 ON T1.stuid  =  T2.stuid WHERE T2.Allergy  =  "Milk" OR T2.Allergy  =  "Cat";	allergy_1
SELECT DISTINCT T1.fname ,  T1.city_code FROM Student AS T1 JOIN Has_Allergy AS T2 ON T1.stuid  =  T2.stuid WHERE T2.Allergy  =  "Milk" OR T2.Allergy  =  "Cat";	allergy_1
SELECT count(*) FROM Student WHERE age  >  18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" OR T2.allergytype  =  "animal");	allergy_1
SELECT count(*) FROM Student WHERE age  >  18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" OR T2.allergytype  =  "animal");	allergy_1
SELECT fname ,  major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Soy");	allergy_1
SELECT fname ,  major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Soy");	allergy_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY T2.invoice_date DESC LIMIT 5;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY T2.invoice_date DESC LIMIT 5;	store_1
SELECT T1.first_name ,  T1.last_name ,  COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name ,  SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;	store_1
SELECT T1.name ,  COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT T1.name ,  COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
SELECT title FROM albums WHERE title LIKE 'A%' ORDER BY title;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY total LIMIT 10;	store_1
SELECT T1.first_name ,  T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id  =  T1.id ORDER BY total LIMIT 10;	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT sum(total) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;	store_1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA";	store_1
SELECT billing_state ,  COUNT(*) ,  SUM(total) FROM invoices WHERE billing_state  =  "CA";	store_1
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Aerosmith";	store_1
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Aerosmith";	store_1
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Billy Cobham";	store_1
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Billy Cobham";	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins";	store_1
SELECT company FROM customers WHERE first_name = "Eduardo" AND last_name = "Martins";	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";	store_1
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";	store_1
SELECT count(*) FROM customers WHERE city = "Prague";	store_1
SELECT count(*) FROM customers WHERE city = "Prague";	store_1
SELECT count(*) FROM customers WHERE state = "CA";	store_1
SELECT count(*) FROM customers WHERE state = "CA";	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";	store_1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";	store_1
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id  =  T2.artist_id WHERE T1.name LIKE '%Led%';	store_1
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id  =  T2.artist_id WHERE T1.name LIKE '%Led%';	store_1
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Steve" AND T1.last_name = "Johnson";	store_1
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Steve" AND T1.last_name = "Johnson";	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT title ,  phone ,  hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.reports_to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id  =  T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;	store_1
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id  =  T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;	store_1
SELECT count(*) FROM employees WHERE country = "Canada";	store_1
SELECT count(*) FROM employees WHERE country = "Canada";	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1;	store_1
SELECT first_name , last_name FROM employees ORDER BY birth_date DESC LIMIT 1;	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;	store_1
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city;	store_1
SELECT count(*) ,  city FROM employees WHERE title  =  'IT Staff' GROUP BY city;	store_1
SELECT T2.first_name , T2.last_name ,  count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;	store_1
SELECT T2.first_name , T2.last_name ,  count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;	store_1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT sum(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT sum(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";	store_1
SELECT name FROM media_types;	store_1
SELECT name FROM media_types;	store_1
SELECT DISTINCT name FROM genres;	store_1
SELECT DISTINCT name FROM genres;	store_1
SELECT name FROM playlists;	store_1
SELECT name FROM playlists;	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT composer FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";	store_1
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";	store_1
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;	store_1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz";	store_1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz";	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies";	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies";	store_1
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.playlist_id GROUP BY T1.playlist_id HAVING count(T1.track_id)  >  100;	store_1
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.playlist_id GROUP BY T1.playlist_id HAVING count(T1.track_id)  >  100;	store_1
SELECT T1.name FROM tracks AS T1 JOIN invoice_lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.invoice_id JOIN customers AS T4 ON T4.id = T3.customer_id WHERE T4.first_name = "Daan" AND T4.last_name = "Peeters";	store_1
SELECT T1.name FROM tracks AS T1 JOIN invoice_lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.invoice_id JOIN customers AS T4 ON T4.id = T3.customer_id WHERE T4.first_name = "Daan" AND T4.last_name = "Peeters";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music';	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music';	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music';	store_1
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music';	store_1
SELECT count(*) ,  T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.name;	store_1
SELECT count(*) ,  T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.name;	store_1
SELECT count(*) FROM editor;	journal_committee
SELECT Name FROM editor ORDER BY Age ASC;	journal_committee
SELECT Name ,  Age FROM editor;	journal_committee
SELECT Name FROM editor WHERE Age  >  25;	journal_committee
SELECT Name FROM editor WHERE Age  =  24 OR Age  =  25;	journal_committee
SELECT Name FROM editor ORDER BY Age ASC LIMIT 1;	journal_committee
SELECT Age ,  COUNT(*) FROM editor GROUP BY Age;	journal_committee
SELECT Age FROM editor GROUP BY Age ORDER BY COUNT(*) DESC LIMIT 1;	journal_committee
SELECT DISTINCT Theme FROM journal;	journal_committee
SELECT T2.Name ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID;	journal_committee
SELECT T2.Name ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID;	journal_committee
SELECT T2.Name ,  T2.age ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID ORDER BY T3.Theme ASC;	journal_committee
SELECT T2.Name FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID WHERE T3.Sales  >  3000;	journal_committee
SELECT T1.editor_id ,  T1.Name ,  COUNT(*) FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID  =  T2.Editor_ID GROUP BY T1.editor_id;	journal_committee
SELECT T1.Name FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID  =  T2.Editor_ID GROUP BY T1.Name HAVING COUNT(*)  >=  2;	journal_committee
SELECT Name FROM editor WHERE editor_id NOT IN (SELECT editor_id FROM journal_committee);	journal_committee
SELECT date ,  theme ,  sales FROM journal EXCEPT SELECT T1.date ,  T1.theme ,  T1.sales FROM journal AS T1 JOIN journal_committee AS T2 ON T1.journal_ID  =  T2.journal_ID;	journal_committee
SELECT avg(T1.sales) FROM journal AS T1 JOIN journal_committee AS T2 ON T1.journal_ID  =  T2.journal_ID WHERE T2.work_type  =  'Photo';	journal_committee
SELECT count(*) FROM Accounts;	customers_card_transactions
SELECT count(*) FROM Accounts;	customers_card_transactions
SELECT account_id ,  customer_id ,  account_name FROM Accounts;	customers_card_transactions
SELECT account_id ,  customer_id ,  account_name FROM Accounts;	customers_card_transactions
SELECT other_account_details FROM Accounts WHERE account_name  =  "338";	customers_card_transactions
SELECT other_account_details FROM Accounts WHERE account_name  =  "338";	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "162";	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "162";	customers_card_transactions
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte";	customers_card_transactions
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte";	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id;	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id;	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1;	customers_card_transactions
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1;	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1;	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1;	customers_card_transactions
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts);	customers_card_transactions
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts);	customers_card_transactions
SELECT customer_first_name ,  customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id;	customers_card_transactions
SELECT customer_first_name ,  customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id;	customers_card_transactions
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id;	customers_card_transactions
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id;	customers_card_transactions
SELECT count(DISTINCT customer_id) FROM Accounts;	customers_card_transactions
SELECT count(DISTINCT customer_id) FROM Accounts;	customers_card_transactions
SELECT count(*) FROM Customers;	customers_card_transactions
SELECT count(*) FROM Customers;	customers_card_transactions
SELECT customer_id ,  customer_first_name ,  customer_last_name ,  customer_phone FROM Customers;	customers_card_transactions
SELECT customer_id ,  customer_first_name ,  customer_last_name ,  customer_phone FROM Customers;	customers_card_transactions
SELECT customer_phone ,  customer_email FROM Customers WHERE customer_first_name  =  "Aniyah" AND customer_last_name  =  "Feest";	customers_card_transactions
SELECT customer_phone ,  customer_email FROM Customers WHERE customer_first_name  =  "Aniyah" AND customer_last_name  =  "Feest";	customers_card_transactions
SELECT count(*) FROM Customers_cards;	customers_card_transactions
SELECT count(*) FROM Customers_cards;	customers_card_transactions
SELECT card_id ,  customer_id ,  card_type_code ,  card_number FROM Customers_cards;	customers_card_transactions
SELECT card_id ,  customer_id ,  card_type_code ,  card_number FROM Customers_cards;	customers_card_transactions
SELECT date_valid_from ,  date_valid_to FROM Customers_cards WHERE card_number  =  "4560596484842";	customers_card_transactions
SELECT date_valid_from ,  date_valid_to FROM Customers_cards WHERE card_number  =  "4560596484842";	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.card_number  =  "4560596484842";	customers_card_transactions
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T2.customer_phone FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.card_number  =  "4560596484842";	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte";	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte";	customers_card_transactions
SELECT count(*) FROM Customers_cards WHERE card_type_code  =  "Debit";	customers_card_transactions
SELECT count(*) FROM Customers_cards WHERE card_type_code  =  "Debit";	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Blanche" AND T2.customer_last_name  =  "Huels" AND T1.card_type_code  =  "Credit";	customers_card_transactions
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Blanche" AND T2.customer_last_name  =  "Huels" AND T1.card_type_code  =  "Credit";	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id;	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id;	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1;	customers_card_transactions
SELECT customer_id ,  count(*) FROM Customers_cards GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1;	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2;	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2;	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1;	customers_card_transactions
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1;	customers_card_transactions
SELECT card_type_code ,  count(*) FROM Customers_cards GROUP BY card_type_code;	customers_card_transactions
SELECT card_type_code ,  count(*) FROM Customers_cards GROUP BY card_type_code;	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code ORDER BY count(*) DESC LIMIT 1;	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code ORDER BY count(*) DESC LIMIT 1;	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code HAVING count(*)  >=  5;	customers_card_transactions
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code HAVING count(*)  >=  5;	customers_card_transactions
SELECT card_type_code ,  count(DISTINCT customer_id) FROM Customers_cards GROUP BY card_type_code;	customers_card_transactions
SELECT card_type_code ,  count(DISTINCT customer_id) FROM Customers_cards GROUP BY card_type_code;	customers_card_transactions
SELECT customer_id ,  customer_first_name FROM Customers EXCEPT SELECT T1.customer_id ,  T2.customer_first_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE card_type_code  =  "Credit";	customers_card_transactions
SELECT customer_id ,  customer_first_name FROM Customers EXCEPT SELECT T1.customer_id ,  T2.customer_first_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE card_type_code  =  "Credit";	customers_card_transactions
SELECT DISTINCT card_type_code FROM Customers_Cards;	customers_card_transactions
SELECT DISTINCT card_type_code FROM Customers_Cards;	customers_card_transactions
SELECT count(DISTINCT card_type_code) FROM Customers_Cards;	customers_card_transactions
SELECT count(DISTINCT card_type_code) FROM Customers_Cards;	customers_card_transactions
SELECT DISTINCT transaction_type FROM Financial_Transactions;	customers_card_transactions
SELECT DISTINCT transaction_type FROM Financial_Transactions;	customers_card_transactions
SELECT count(DISTINCT transaction_type) FROM Financial_Transactions;	customers_card_transactions
SELECT count(DISTINCT transaction_type) FROM Financial_Transactions;	customers_card_transactions
SELECT avg(transaction_amount) ,  sum(transaction_amount) FROM Financial_transactions;	customers_card_transactions
SELECT avg(transaction_amount) ,  sum(transaction_amount) FROM Financial_transactions;	customers_card_transactions
SELECT T2.card_type_code ,  count(*) FROM Financial_transactions AS T1 JOIN Customers_cards AS T2 ON T1.card_id  =  T2.card_id GROUP BY T2.card_type_code;	customers_card_transactions
SELECT T2.card_type_code ,  count(*) FROM Financial_transactions AS T1 JOIN Customers_cards AS T2 ON T1.card_id  =  T2.card_id GROUP BY T2.card_type_code;	customers_card_transactions
SELECT transaction_type ,  count(*) FROM Financial_transactions GROUP BY transaction_type;	customers_card_transactions
SELECT transaction_type ,  count(*) FROM Financial_transactions GROUP BY transaction_type;	customers_card_transactions
SELECT transaction_type FROM Financial_transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) DESC LIMIT 1;	customers_card_transactions
SELECT transaction_type FROM Financial_transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) DESC LIMIT 1;	customers_card_transactions
SELECT account_id ,  count(*) FROM Financial_transactions GROUP BY account_id;	customers_card_transactions
SELECT account_id ,  count(*) FROM Financial_transactions GROUP BY account_id;	customers_card_transactions
SELECT count(*) FROM track;	race_track
SELECT count(*) FROM track;	race_track
SELECT name ,  LOCATION FROM track;	race_track
SELECT name ,  LOCATION FROM track;	race_track
SELECT name ,  seating FROM track WHERE year_opened  >  2000 ORDER BY seating;	race_track
SELECT name ,  seating FROM track WHERE year_opened  >  2000 ORDER BY seating;	race_track
SELECT name ,  LOCATION ,  seating FROM track ORDER BY year_opened DESC LIMIT 1;	race_track
SELECT name ,  LOCATION ,  seating FROM track ORDER BY year_opened DESC LIMIT 1;	race_track
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track;	race_track
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track;	race_track
SELECT name ,  LOCATION ,  year_opened FROM track WHERE seating  >  (SELECT avg(seating) FROM track);	race_track
SELECT name ,  LOCATION ,  year_opened FROM track WHERE seating  >  (SELECT avg(seating) FROM track);	race_track
SELECT DISTINCT LOCATION FROM track;	race_track
SELECT DISTINCT LOCATION FROM track;	race_track
SELECT count(*) FROM race;	race_track
SELECT count(*) FROM race;	race_track
SELECT DISTINCT CLASS FROM race;	race_track
SELECT DISTINCT CLASS FROM race;	race_track
SELECT name ,  CLASS ,  date FROM race;	race_track
SELECT name ,  CLASS ,  date FROM race;	race_track
SELECT CLASS ,  count(*) FROM race GROUP BY CLASS;	race_track
SELECT CLASS ,  count(*) FROM race GROUP BY CLASS;	race_track
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;	race_track
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1;	race_track
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*)  >=  2;	race_track
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*)  >=  2;	race_track
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id WHERE T1.class  =  'GT';	race_track
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id WHERE T1.class  =  'GT';	race_track
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM race);	race_track
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM race);	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000;	race_track
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000;	race_track
SELECT T2.name ,  count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id;	race_track
SELECT T2.name ,  count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id;	race_track
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1;	race_track
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1;	race_track
SELECT T1.name ,  T1.date ,  T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id;	race_track
SELECT T1.name ,  T1.date ,  T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id;	race_track
SELECT T2.name ,  T2.location FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id HAVING count(*)  =  1;	race_track
SELECT T2.name ,  T2.location FROM race AS T1 JOIN track AS T2 ON T1.track_id  =  T2.track_id GROUP BY T1.track_id HAVING count(*)  =  1;	race_track
SELECT LOCATION FROM track WHERE seating  >  90000 INTERSECT SELECT LOCATION FROM track WHERE seating  <  70000;	race_track
SELECT LOCATION FROM track WHERE seating  >  90000 INTERSECT SELECT LOCATION FROM track WHERE seating  <  70000;	race_track
SELECT count(*) FROM member WHERE Membership_card  =  'Black';	coffee_shop
SELECT count(*) ,  address FROM member GROUP BY address;	coffee_shop
SELECT name FROM member WHERE address  =  'Harford' OR address  =  'Waterbury';	coffee_shop
SELECT name ,  member_id FROM member WHERE Membership_card  =  'Black' OR age  <  30;	coffee_shop
SELECT Time_of_purchase ,  age ,  address FROM member ORDER BY Time_of_purchase;	coffee_shop
SELECT Membership_card FROM member GROUP BY Membership_card HAVING count(*)  >  5;	coffee_shop
SELECT address FROM member WHERE age  <  30 INTERSECT SELECT address FROM member WHERE age  >  40;	coffee_shop
SELECT membership_card FROM member WHERE address  =  'Hartford' INTERSECT SELECT membership_card FROM member WHERE address  =  'Waterbury';	coffee_shop
SELECT count(*) FROM member WHERE address != 'Hartford';	coffee_shop
SELECT address FROM member EXCEPT SELECT address FROM member WHERE Membership_card  =  'Black';	coffee_shop
SELECT address FROM shop ORDER BY open_year;	coffee_shop
SELECT avg(num_of_staff) ,  avg(score) FROM shop;	coffee_shop
SELECT shop_id ,  address FROM shop WHERE score  <  (SELECT avg(score) FROM shop);	coffee_shop
SELECT address ,  num_of_staff FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM happy_hour);	coffee_shop
SELECT t1.address ,  t1.shop_id FROM shop AS t1 JOIN happy_hour AS t2 ON t1.shop_id  =  t2.shop_id WHERE MONTH  =  'May';	coffee_shop
SELECT shop_id ,  count(*) FROM happy_hour GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1;	coffee_shop
SELECT MONTH FROM happy_hour GROUP BY MONTH ORDER BY count(*) DESC LIMIT 1;	coffee_shop
SELECT MONTH FROM happy_hour GROUP BY MONTH HAVING count(*)  >  2;	coffee_shop
SELECT count(*) FROM ALBUM;	chinook_1
SELECT count(*) FROM ALBUM;	chinook_1
SELECT Name FROM GENRE;	chinook_1
SELECT Name FROM GENRE;	chinook_1
SELECT * FROM CUSTOMER WHERE State  =  "NY";	chinook_1
SELECT * FROM CUSTOMER WHERE State  =  "NY";	chinook_1
SELECT FirstName ,  LastName FROM EMPLOYEE WHERE City  =  "Calgary";	chinook_1
SELECT FirstName ,  LastName FROM EMPLOYEE WHERE City  =  "Calgary";	chinook_1
SELECT distinct(BillingCountry) FROM INVOICE;	chinook_1
SELECT distinct(BillingCountry) FROM INVOICE;	chinook_1
SELECT Name FROM ARTIST WHERE Name LIKE "%a%";	chinook_1
SELECT Name FROM ARTIST WHERE Name LIKE "%a%";	chinook_1
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "AC/DC";	chinook_1
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "AC/DC";	chinook_1
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "Metallica";	chinook_1
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "Metallica";	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  "Balls to the Wall";	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  "Balls to the Wall";	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1;	chinook_1
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1;	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%';	chinook_1
SELECT Name FROM TRACK WHERE Name LIKE '%you%';	chinook_1
SELECT AVG(UnitPrice) FROM TRACK;	chinook_1
SELECT AVG(UnitPrice) FROM TRACK;	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK;	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK;	chinook_1
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID;	chinook_1
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID;	chinook_1
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1;	chinook_1
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1;	chinook_1
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1;	chinook_1
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1;	chinook_1
SELECT T1.Title ,  T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId WHERE T2.UnitPrice  >  1 GROUP BY T2.AlbumID;	chinook_1
SELECT T1.Title ,  T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId WHERE T2.UnitPrice  >  1 GROUP BY T2.AlbumID;	chinook_1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock";	chinook_1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock";	chinook_1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Jazz";	chinook_1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Jazz";	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br";	chinook_1
SELECT FirstName ,  LastName FROM CUSTOMER WHERE Email  =  "luisg@embraer.com.br";	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%";	chinook_1
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%";	chinook_1
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  "Leonie";	chinook_1
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  "Leonie";	chinook_1
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  "70174";	chinook_1
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  "70174";	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE;	chinook_1
SELECT COUNT(DISTINCT city) FROM EMPLOYEE;	chinook_1
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  "Astrid" AND LastName  =  "Gruber";	chinook_1
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  "Astrid" AND LastName  =  "Gruber";	chinook_1
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20;	chinook_1
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20;	chinook_1
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Brazil";	chinook_1
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Brazil";	chinook_1
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Germany";	chinook_1
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  "Germany";	chinook_1
SELECT Phone FROM EMPLOYEE;	chinook_1
SELECT Phone FROM EMPLOYEE;	chinook_1
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  "AAC audio file";	chinook_1
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  "AAC audio file";	chinook_1
SELECT AVG(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Latin" OR T1.Name  =  "Pop";	chinook_1
SELECT AVG(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Latin" OR T1.Name  =  "Pop";	chinook_1
SELECT T1.FirstName ,  T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  >=  10;	chinook_1
SELECT T1.FirstName ,  T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  >=  10;	chinook_1
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  <=  20;	chinook_1
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*)  <=  20;	chinook_1
SELECT Title FROM ALBUM ORDER BY Title;	chinook_1
SELECT Title FROM ALBUM ORDER BY Title;	chinook_1
SELECT T2.Name ,  T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistID GROUP BY T1.ArtistId HAVING COUNT(*)  >=  3 ORDER BY T2.Name;	chinook_1
SELECT T2.Name ,  T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistID GROUP BY T1.ArtistId HAVING COUNT(*)  >=  3 ORDER BY T2.Name;	chinook_1
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId;	chinook_1
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId;	chinook_1
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock";	chinook_1
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Rock";	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Pop";	chinook_1
SELECT max(Milliseconds) ,  min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  "Pop";	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton";	chinook_1
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton";	chinook_1
SELECT distinct(UnitPrice) FROM TRACK;	chinook_1
SELECT distinct(UnitPrice) FROM TRACK;	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM);	chinook_1
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM);	chinook_1
SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Reggae' INTERSECT SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Rock';	chinook_1
SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Reggae' INTERSECT SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Rock';	chinook_1
SELECT customer_phone FROM available_policies;	insurance_fnol
SELECT customer_phone FROM available_policies;	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  "Life Insurance";	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  "Life Insurance";	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1;	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1;	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1);	insurance_fnol
SELECT customer_phone FROM available_policies WHERE policy_type_code  =  (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1);	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*)  >  4;	insurance_fnol
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*)  >  4;	insurance_fnol
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements;	insurance_fnol
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements;	insurance_fnol
SELECT t2.service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id  =  t2.service_id GROUP BY t1.service_id HAVING count(*)  >  2;	insurance_fnol
SELECT t2.service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id  =  t2.service_id GROUP BY t1.service_id HAVING count(*)  >  2;	insurance_fnol
SELECT t1.Effective_Date FROM claims AS t1 JOIN settlements AS t2 ON t1.claim_id  =  t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.settlement_amount) DESC LIMIT 1;	insurance_fnol
SELECT t1.Effective_Date FROM claims AS t1 JOIN settlements AS t2 ON t1.claim_id  =  t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.settlement_amount) DESC LIMIT 1;	insurance_fnol
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Dayana Robel";	insurance_fnol
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Dayana Robel";	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1;	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1;	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  "Dayana Robel";	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  "Dayana Robel";	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1);	insurance_fnol
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id JOIN available_policies AS t3 ON t2.policy_id  =  t3.policy_id WHERE t1.customer_name  =  (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1);	insurance_fnol
SELECT service_name FROM services ORDER BY service_name;	insurance_fnol
SELECT service_name FROM services ORDER BY service_name;	insurance_fnol
SELECT count(*) FROM services;	insurance_fnol
SELECT count(*) FROM services;	insurance_fnol
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id;	insurance_fnol
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id;	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" OR t3.service_name  =  "Upgrade a policy";	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" OR t3.service_name  =  "Upgrade a policy";	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "New policy application";	insurance_fnol
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "New policy application";	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%";	insurance_fnol
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%";	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements;	insurance_fnol
SELECT max(settlement_amount) ,  min(settlement_amount) FROM settlements;	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC;	insurance_fnol
SELECT customer_id ,  customer_name FROM customers ORDER BY customer_id ASC;	insurance_fnol
SELECT t2.date_opened ,  t2.date_closed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name LIKE "%Diana%";	insurance_fnol
SELECT t2.date_opened ,  t2.date_closed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name LIKE "%Diana%";	insurance_fnol
SELECT count(*) FROM enzyme;	medicine_enzyme_interaction
SELECT count(*) FROM enzyme;	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC;	medicine_enzyme_interaction
SELECT name FROM enzyme ORDER BY name DESC;	medicine_enzyme_interaction
SELECT name ,  LOCATION FROM enzyme;	medicine_enzyme_interaction
SELECT name ,  LOCATION FROM enzyme;	medicine_enzyme_interaction
SELECT max(OMIM) FROM enzyme;	medicine_enzyme_interaction
SELECT max(OMIM) FROM enzyme;	medicine_enzyme_interaction
SELECT product ,  chromosome ,  porphyria FROM enzyme WHERE LOCATION  =  'Cytosol';	medicine_enzyme_interaction
SELECT product ,  chromosome ,  porphyria FROM enzyme WHERE LOCATION  =  'Cytosol';	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme';	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE product != 'Heme';	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine WHERE FDA_approved  =  'Yes';	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine WHERE FDA_approved  =  'Yes';	medicine_enzyme_interaction
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id  =  T3.id WHERE T3.name  =  'Amisulpride' AND T2.interaction_type  =  'inhibitor';	medicine_enzyme_interaction
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id  =  T3.id WHERE T3.name  =  'Amisulpride' AND T2.interaction_type  =  'inhibitor';	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2;	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2;	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name ,  T1.FDA_approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC;	medicine_enzyme_interaction
SELECT T1.id ,  T1.Name ,  T1.FDA_approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id ORDER BY count(*) DESC;	medicine_enzyme_interaction
SELECT T1.id ,  T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id WHERE T2.interaction_type  =  'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;	medicine_enzyme_interaction
SELECT T1.id ,  T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id  =  T2.enzyme_id WHERE T2.interaction_type  =  'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;	medicine_enzyme_interaction
SELECT T1.interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.medicine_id  =  T2.id JOIN enzyme AS T3 ON T1.enzyme_id  =  T3.id WHERE T3.name  =  'ALA synthase' AND T2.name  =  'Aripiprazole';	medicine_enzyme_interaction
SELECT T1.interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.medicine_id  =  T2.id JOIN enzyme AS T3 ON T1.enzyme_id  =  T3.id WHERE T3.name  =  'ALA synthase' AND T2.name  =  'Aripiprazole';	medicine_enzyme_interaction
SELECT interaction_type ,  count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1;	medicine_enzyme_interaction
SELECT interaction_type ,  count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1;	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No';	medicine_enzyme_interaction
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No';	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );	medicine_enzyme_interaction
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );	medicine_enzyme_interaction
SELECT T1.id ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING COUNT(*)  >=  3;	medicine_enzyme_interaction
SELECT T1.id ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id GROUP BY T1.id HAVING COUNT(*)  >=  3;	medicine_enzyme_interaction
SELECT DISTINCT T1.name ,  T1.location ,  T1.product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id  =  T1.id WHERE T2.interaction_type  =  'inhibitor';	medicine_enzyme_interaction
SELECT DISTINCT T1.name ,  T1.location ,  T1.product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id  =  T1.id WHERE T2.interaction_type  =  'inhibitor';	medicine_enzyme_interaction
SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'inhibitor' INTERSECT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'activitor';	medicine_enzyme_interaction
SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'inhibitor' INTERSECT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'activitor';	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine EXCEPT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id JOIN enzyme AS T3 ON T3.id  =  T2.enzyme_id WHERE T3.product  =  'Protoporphyrinogen IX';	medicine_enzyme_interaction
SELECT name ,  trade_name FROM medicine EXCEPT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id JOIN enzyme AS T3 ON T3.id  =  T2.enzyme_id WHERE T3.product  =  'Protoporphyrinogen IX';	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine;	medicine_enzyme_interaction
SELECT count(DISTINCT FDA_approved) FROM medicine;	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%";	medicine_enzyme_interaction
SELECT name FROM enzyme WHERE name LIKE "%ALA%";	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name;	medicine_enzyme_interaction
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name;	medicine_enzyme_interaction
SELECT school ,  nickname FROM university ORDER BY founded;	university_basketball
SELECT school ,  nickname FROM university ORDER BY founded;	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public';	university_basketball
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public';	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1;	university_basketball
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1;	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1;	university_basketball
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1;	university_basketball
SELECT count(DISTINCT school_id) FROM basketball_match;	university_basketball
SELECT count(DISTINCT school_id) FROM basketball_match;	university_basketball
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1;	university_basketball
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1;	university_basketball
SELECT t1.Primary_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t2.acc_percent LIMIT 1;	university_basketball
SELECT t1.Primary_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t2.acc_percent LIMIT 1;	university_basketball
SELECT t2.team_name ,  t2.ACC_Regular_Season FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t1.founded LIMIT 1;	university_basketball
SELECT t2.team_name ,  t2.ACC_Regular_Season FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t1.founded LIMIT 1;	university_basketball
SELECT t2.All_Games ,  t1.location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE team_name  =  'Clemson';	university_basketball
SELECT t2.All_Games ,  t1.location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE team_name  =  'Clemson';	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850;	university_basketball
SELECT avg(enrollment) FROM university WHERE founded  <  1850;	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1;	university_basketball
SELECT enrollment ,  primary_conference FROM university ORDER BY founded LIMIT 1;	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university;	university_basketball
SELECT sum(enrollment) ,  min(enrollment) FROM university;	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation;	university_basketball
SELECT sum(enrollment) ,  affiliation FROM university GROUP BY affiliation;	university_basketball
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_match);	university_basketball
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_match);	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public';	university_basketball
SELECT school FROM university WHERE founded  >  1850 OR affiliation  =  'Public';	university_basketball
SELECT count(DISTINCT affiliation) FROM university;	university_basketball
SELECT count(DISTINCT affiliation) FROM university;	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%";	university_basketball
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%";	university_basketball
SELECT t2.team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE enrollment  <  (SELECT avg(enrollment) FROM university);	university_basketball
SELECT t2.team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE enrollment  <  (SELECT avg(enrollment) FROM university);	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation;	university_basketball
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation;	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation;	university_basketball
SELECT sum(Enrollment) ,  affiliation FROM university WHERE founded  >  1850 GROUP BY affiliation;	university_basketball
SELECT max(Enrollment) FROM university;	university_basketball
SELECT max(Enrollment) FROM university;	university_basketball
SELECT * FROM basketball_match;	university_basketball
SELECT * FROM basketball_match;	university_basketball
SELECT team_name FROM basketball_match ORDER BY All_Home DESC;	university_basketball
SELECT team_name FROM basketball_match ORDER BY All_Home DESC;	university_basketball
SELECT Model_name FROM chip_model WHERE Launch_year BETWEEN 2002 AND 2004;	phone_1
SELECT Model_name ,  RAM_MiB FROM chip_model ORDER BY RAM_MiB ASC LIMIT 1;	phone_1
SELECT chip_model ,  screen_mode FROM phone WHERE Hardware_Model_name = "LG-P760";	phone_1
SELECT count(*) FROM phone WHERE Company_name = "Nokia Corporation";	phone_1
SELECT max(T1.RAM_MiB) ,  min(T1.RAM_MiB) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T2.Company_name = "Nokia Corporation";	phone_1
SELECT avg(T1.ROM_MiB) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T2.Company_name = "Nokia Corporation";	phone_1
SELECT T2.Hardware_Model_name ,  T2.Company_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T1.Launch_year = 2002 OR T1.RAM_MiB  >  32;	phone_1
SELECT Hardware_Model_name ,  Company_name FROM phone WHERE Accreditation_type LIKE 'Full';	phone_1
SELECT T1.Char_cells ,  T1.Pixels ,  T1.Hardware_colours FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T2.Hardware_Model_name = "LG-P760";	phone_1
SELECT T2.Hardware_Model_name ,  T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type  =  "Graphics";	phone_1
SELECT Company_name ,  count(*) FROM phone GROUP BY Company_name ORDER BY count(*) ASC LIMIT 1;	phone_1
SELECT Company_name FROM phone GROUP BY Company_name HAVING count(*)  >  1;	phone_1
SELECT max(used_kb) , min(used_kb) , avg(used_kb) FROM screen_mode;	phone_1
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model WHERE T1.Launch_year = 2002 ORDER BY T1.RAM_MiB DESC LIMIT 1;	phone_1
SELECT T1.WiFi , T3.Type FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.Graphics_mode WHERE T2.Hardware_Model_name = "LG-P760";	phone_1
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name  =  T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.Graphics_mode WHERE T3.Type = "Text" OR T1.RAM_MiB  >  32;	phone_1
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type  =  "Graphics" OR t2.Company_name  =  "Nokia Corporation";	phone_1
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE t2.Company_name  =  "Nokia Corporation" AND T1.Type != "Text";	phone_1
SELECT DISTINCT T2.Hardware_Model_name , T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.used_kb BETWEEN 10 AND 15;	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type;	phone_1
SELECT Accreditation_type ,  count(*) FROM phone GROUP BY Accreditation_type;	phone_1
SELECT Accreditation_level FROM phone GROUP BY Accreditation_level HAVING count(*)  >  3;	phone_1
SELECT * FROM chip_model;	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No';	phone_1
SELECT count(*) FROM chip_model WHERE wifi  =  'No';	phone_1
SELECT model_name FROM chip_model ORDER BY launch_year;	phone_1
SELECT avg(RAM_MiB) FROM chip_model WHERE model_name NOT IN (SELECT chip_model FROM phone);	phone_1
SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE Accreditation_type  =  'Full';	phone_1
SELECT t1.pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.Graphics_mode  =  t2.screen_mode WHERE t2.Accreditation_type  =  'Provisional' INTERSECT SELECT t1.pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.Graphics_mode  =  t2.screen_mode WHERE t2.Accreditation_type  =  'Full';	phone_1
SELECT count(*) FROM country;	match_season
SELECT count(*) FROM country;	match_season
SELECT Country_name ,  Capital FROM country;	match_season
SELECT Country_name ,  Capital FROM country;	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%";	match_season
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%";	match_season
SELECT DISTINCT POSITION FROM match_season;	match_season
SELECT DISTINCT POSITION FROM match_season;	match_season
SELECT Player FROM match_season WHERE College  =  "UCLA";	match_season
SELECT Player FROM match_season WHERE College  =  "UCLA";	match_season
SELECT DISTINCT POSITION FROM match_season WHERE College  =  "UCLA" OR College  =  "Duke";	match_season
SELECT DISTINCT POSITION FROM match_season WHERE College  =  "UCLA" OR College  =  "Duke";	match_season
SELECT Draft_Pick_Number ,  Draft_Class FROM match_season WHERE POSITION  =  "Defender";	match_season
SELECT Draft_Pick_Number ,  Draft_Class FROM match_season WHERE POSITION  =  "Defender";	match_season
SELECT count(DISTINCT Team) FROM match_season;	match_season
SELECT count(DISTINCT Team) FROM match_season;	match_season
SELECT Player ,  Years_Played FROM player;	match_season
SELECT Player ,  Years_Played FROM player;	match_season
SELECT Name FROM Team;	match_season
SELECT Name FROM Team;	match_season
SELECT T2.Season ,  T2.Player ,  T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country;	match_season
SELECT T2.Season ,  T2.Player ,  T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country;	match_season
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Country_name  =  "Indonesia";	match_season
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Country_name  =  "Indonesia";	match_season
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin";	match_season
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin";	match_season
SELECT T1.Official_native_language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.College  =  "Maryland" OR T2.College  =  "Duke";	match_season
SELECT T1.Official_native_language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.College  =  "Maryland" OR T2.College  =  "Duke";	match_season
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender";	match_season
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender";	match_season
SELECT T1.Season ,  T1.Player ,  T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id;	match_season
SELECT T1.Season ,  T1.Player ,  T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id;	match_season
SELECT T1.Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Ryley Goldner";	match_season
SELECT T1.Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Ryley Goldner";	match_season
SELECT count(DISTINCT T1.College) FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew";	match_season
SELECT count(DISTINCT T1.College) FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew";	match_season
SELECT T1.Player , T1.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew";	match_season
SELECT T1.Player , T1.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew";	match_season
SELECT POSITION ,  COUNT(*) FROM match_season GROUP BY POSITION;	match_season
SELECT POSITION ,  COUNT(*) FROM match_season GROUP BY POSITION;	match_season
SELECT Country_name ,  COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country GROUP BY T1.Country_name;	match_season
SELECT Country_name ,  COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country GROUP BY T1.Country_name;	match_season
SELECT player FROM match_season ORDER BY College ASC;	match_season
SELECT player FROM match_season ORDER BY College ASC;	match_season
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1;	match_season
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1;	match_season
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3;	match_season
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3;	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2;	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2;	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2 ORDER BY College DESC;	match_season
SELECT College FROM match_season GROUP BY College HAVING count(*)  >=  2 ORDER BY College DESC;	match_season
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season);	match_season
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season);	match_season
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Forward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender";	match_season
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Forward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender";	match_season
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender";	match_season
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender";	match_season
SELECT count(*) FROM climber;	climbing
SELECT count(*) FROM climber;	climbing
SELECT Name FROM climber ORDER BY Points DESC;	climbing
SELECT Name FROM climber ORDER BY Points DESC;	climbing
SELECT Name FROM climber WHERE Country != "Switzerland";	climbing
SELECT Name FROM climber WHERE Country != "Switzerland";	climbing
SELECT max(Points) FROM climber WHERE Country  =  "United Kingdom";	climbing
SELECT max(Points) FROM climber WHERE Country  =  "United Kingdom";	climbing
SELECT COUNT(DISTINCT Country) FROM climber;	climbing
SELECT COUNT(DISTINCT Country) FROM climber;	climbing
SELECT Name FROM mountain ORDER BY Name ASC;	climbing
SELECT Name FROM mountain ORDER BY Name ASC;	climbing
SELECT Country FROM mountain WHERE Height  >  5000;	climbing
SELECT Country FROM mountain WHERE Height  >  5000;	climbing
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1;	climbing
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1;	climbing
SELECT DISTINCT Range FROM mountain ORDER BY Prominence DESC LIMIT 3;	climbing
SELECT DISTINCT Range FROM mountain ORDER BY Prominence DESC LIMIT 3;	climbing
SELECT T1.Name ,  T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID;	climbing
SELECT T1.Name ,  T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID;	climbing
SELECT T1.Name ,  T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID;	climbing
SELECT T1.Name ,  T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID;	climbing
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID ORDER BY T1.Points DESC LIMIT 1;	climbing
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID ORDER BY T1.Points DESC LIMIT 1;	climbing
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T1.Country  =  "West Germany";	climbing
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T1.Country  =  "West Germany";	climbing
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T2.Country  =  "Uganda";	climbing
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID WHERE T2.Country  =  "Uganda";	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country;	climbing
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country;	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1;	climbing
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*)  >  1;	climbing
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber);	climbing
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber);	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200;	climbing
SELECT Country FROM mountain WHERE Height  >  5600 INTERSECT SELECT Country FROM mountain WHERE Height  <  5200;	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1;	climbing
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1;	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000;	climbing
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000;	climbing
SELECT count(*) FROM body_builder;	body_builder
SELECT Total FROM body_builder ORDER BY Total ASC;	body_builder
SELECT Snatch ,  Clean_Jerk FROM body_builder ORDER BY Snatch ASC;	body_builder
SELECT avg(Snatch) FROM body_builder;	body_builder
SELECT Clean_Jerk FROM body_builder ORDER BY Total DESC LIMIT 1;	body_builder
SELECT Birth_Date FROM People ORDER BY Height ASC;	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID;	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Total  >  300;	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1;	body_builder
SELECT T2.Birth_Date ,  T2.Birth_Place FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Total DESC LIMIT 1;	body_builder
SELECT T2.Height FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Total  <  315;	body_builder
SELECT avg(T1.Total) FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  200;	body_builder
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Total DESC;	body_builder
SELECT Birth_Place ,  COUNT(*) FROM people GROUP BY Birth_Place;	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place ORDER BY COUNT(*) DESC LIMIT 1;	body_builder
SELECT Birth_Place FROM people GROUP BY Birth_Place HAVING COUNT(*)  >=  2;	body_builder
SELECT Height ,  Weight FROM people ORDER BY Height DESC;	body_builder
SELECT * FROM body_builder;	body_builder
SELECT Name ,  birth_place FROM people EXCEPT SELECT T1.Name ,  T1.birth_place FROM people AS T1 JOIN body_builder AS T2 ON T1.people_id  =  T2.people_id;	body_builder
SELECT count(DISTINCT Birth_Place) FROM people;	body_builder
SELECT count(*) FROM people WHERE people_id NOT IN (SELECT People_ID FROM body_builder);	body_builder
SELECT T2.weight FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id WHERE T1.snatch  >  140 OR T2.height  >  200;	body_builder
SELECT T1.total FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id WHERE T2.Birth_Date LIKE "%January%";	body_builder
SELECT min(snatch) FROM body_builder;	body_builder
SELECT count(*) FROM election;	election_representative
SELECT Votes FROM election ORDER BY Votes DESC;	election_representative
SELECT Date ,  Vote_Percent FROM election;	election_representative
SELECT min(Vote_Percent) ,  max(Vote_Percent) FROM election;	election_representative
SELECT Name ,  Party FROM representative;	election_representative
SELECT Name FROM Representative WHERE Party != "Republican";	election_representative
SELECT Lifespan FROM representative WHERE State  =  "New York" OR State  =  "Indiana";	election_representative
SELECT T2.Name ,  T1.Date FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID;	election_representative
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID WHERE Votes  >  10000;	election_representative
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY votes DESC;	election_representative
SELECT T2.Party FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY votes ASC LIMIT 1;	election_representative
SELECT T2.Lifespan FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID ORDER BY Vote_Percent DESC;	election_representative
SELECT avg(T1.Votes) FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID WHERE T2.Party  =  "Republican";	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party;	election_representative
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1;	election_representative
SELECT Party FROM representative GROUP BY Party HAVING COUNT(*)  >=  3;	election_representative
SELECT State FROM representative GROUP BY State HAVING COUNT(*)  >=  2;	election_representative
SELECT Name FROM representative WHERE Representative_ID NOT IN (SELECT Representative_ID FROM election);	election_representative
SELECT Party FROM representative WHERE State  =  "New York" INTERSECT SELECT Party FROM representative WHERE State  =  "Pennsylvania";	election_representative
SELECT count(DISTINCT Party) FROM representative;	election_representative
SELECT count(*) FROM Apartment_Bookings;	apartment_rentals
SELECT count(*) FROM Apartment_Bookings;	apartment_rentals
SELECT booking_start_date ,  booking_end_date FROM Apartment_Bookings;	apartment_rentals
SELECT booking_start_date ,  booking_end_date FROM Apartment_Bookings;	apartment_rentals
SELECT DISTINCT building_description FROM Apartment_Buildings;	apartment_rentals
SELECT DISTINCT building_description FROM Apartment_Buildings;	apartment_rentals
SELECT building_short_name FROM Apartment_Buildings WHERE building_manager	 =  "Emma";	apartment_rentals
SELECT building_short_name FROM Apartment_Buildings WHERE building_manager	 =  "Emma";	apartment_rentals
SELECT building_address ,  building_phone FROM Apartment_Buildings WHERE building_manager	 =  "Brenden";	apartment_rentals
SELECT building_address ,  building_phone FROM Apartment_Buildings WHERE building_manager	 =  "Brenden";	apartment_rentals
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%court%";	apartment_rentals
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%court%";	apartment_rentals
SELECT min(bathroom_count) ,  max(bathroom_count) FROM Apartments;	apartment_rentals
SELECT min(bathroom_count) ,  max(bathroom_count) FROM Apartments;	apartment_rentals
SELECT avg(bedroom_count) FROM Apartments;	apartment_rentals
SELECT avg(bedroom_count) FROM Apartments;	apartment_rentals
SELECT apt_number ,  room_count FROM Apartments;	apartment_rentals
SELECT apt_number ,  room_count FROM Apartments;	apartment_rentals
SELECT avg(room_count) FROM Apartments WHERE apt_type_code  =  "Studio";	apartment_rentals
SELECT avg(room_count) FROM Apartments WHERE apt_type_code  =  "Studio";	apartment_rentals
SELECT apt_number FROM Apartments WHERE apt_type_code  =  "Flat";	apartment_rentals
SELECT apt_number FROM Apartments WHERE apt_type_code  =  "Flat";	apartment_rentals
SELECT guest_first_name ,  guest_last_name FROM Guests;	apartment_rentals
SELECT guest_first_name ,  guest_last_name FROM Guests;	apartment_rentals
SELECT date_of_birth FROM Guests WHERE gender_code  =  "Male";	apartment_rentals
SELECT date_of_birth FROM Guests WHERE gender_code  =  "Male";	apartment_rentals
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id;	apartment_rentals
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id;	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_type_code  =  "Duplex";	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_type_code  =  "Duplex";	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  2;	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  2;	apartment_rentals
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_number  =  "Suite 634";	apartment_rentals
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_number  =  "Suite 634";	apartment_rentals
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed";	apartment_rentals
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed";	apartment_rentals
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional";	apartment_rentals
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional";	apartment_rentals
SELECT T2.guest_first_name ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id;	apartment_rentals
SELECT T2.guest_first_name ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id;	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T2.gender_code  =  "Female";	apartment_rentals
SELECT T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T2.gender_code  =  "Female";	apartment_rentals
SELECT T2.guest_first_name ,  T2.guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T1.booking_status_code  =  "Confirmed";	apartment_rentals
SELECT T2.guest_first_name ,  T2.guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id  =  T2.guest_id WHERE T1.booking_status_code  =  "Confirmed";	apartment_rentals
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  4;	apartment_rentals
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.bedroom_count  >  4;	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.facility_code  =  "Gym";	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.facility_code  =  "Gym";	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_short_name  =  "Columbus Square";	apartment_rentals
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_short_name  =  "Columbus Square";	apartment_rentals
SELECT T1.building_address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T2.bathroom_count  >  2;	apartment_rentals
SELECT T1.building_address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T2.bathroom_count  >  2;	apartment_rentals
SELECT T2.apt_type_code ,  T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_manager  =  "Kyle";	apartment_rentals
SELECT T2.apt_type_code ,  T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_manager  =  "Kyle";	apartment_rentals
SELECT 	booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code;	apartment_rentals
SELECT 	booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code;	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY room_count ASC;	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY room_count ASC;	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1;	apartment_rentals
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1;	apartment_rentals
SELECT apt_type_code ,  COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC;	apartment_rentals
SELECT apt_type_code ,  COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC;	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3;	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3;	apartment_rentals
SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1;	apartment_rentals
SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1;	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1;	apartment_rentals
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1;	apartment_rentals
SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1;	apartment_rentals
SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1;	apartment_rentals
SELECT apt_type_code ,  max(room_count) ,  min(room_count) FROM Apartments GROUP BY apt_type_code;	apartment_rentals
SELECT apt_type_code ,  max(room_count) ,  min(room_count) FROM Apartments GROUP BY apt_type_code;	apartment_rentals
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC;	apartment_rentals
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC;	apartment_rentals
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facilities);	apartment_rentals
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facilities);	apartment_rentals
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional";	apartment_rentals
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional";	apartment_rentals
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  1;	apartment_rentals
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.available_yn  =  1;	apartment_rentals
SELECT count(*) FROM game WHERE season  >  2007;	game_injury
SELECT Date FROM game ORDER BY home_team DESC;	game_injury
SELECT season ,  home_team ,  away_team FROM game;	game_injury
SELECT max(home_games) ,  min(home_games) ,  avg(home_games) FROM stadium;	game_injury
SELECT average_attendance FROM stadium WHERE capacity_percentage  >  100;	game_injury
SELECT player ,  number_of_matches ,  SOURCE FROM injury_accident WHERE injury != 'Knee problem';	game_injury
SELECT T1.season FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id WHERE T2.player  =  'Walter Samuel';	game_injury
SELECT T1.id ,  T1.score ,  T1.date FROM game AS T1 JOIN injury_accident AS T2 ON T2.game_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2;	game_injury
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;	game_injury
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;	game_injury
SELECT T1.season ,  T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.injury  =  'Foot injury' OR T3.injury  =  'Knee problem';	game_injury
SELECT count(DISTINCT SOURCE) FROM injury_accident;	game_injury
SELECT count(*) FROM game WHERE id NOT IN ( SELECT game_id FROM injury_accident );	game_injury
SELECT count(DISTINCT T1.injury) FROM injury_accident AS T1 JOIN game AS T2 ON T1.game_id  =  T2.id WHERE T2.season  >  2010;	game_injury
SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Walter Samuel' INTERSECT SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Thiago Motta';	game_injury
SELECT name ,  average_attendance ,  total_attendance FROM stadium EXCEPT SELECT T2.name ,  T2.average_attendance ,  T2.total_attendance FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id;	game_injury
SELECT name FROM stadium WHERE name LIKE "%Bank%";	game_injury
SELECT T1.id ,  count(*) FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id GROUP BY T1.id;	game_injury
SELECT T1.date ,  T2.player FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id ORDER BY T1.season DESC;	game_injury
SELECT T1.name ,  T2.name FROM Country AS T1 JOIN League AS T2 ON T1.id  =  T2.country_id;	soccer_1
SELECT count(*) FROM Country AS T1 JOIN League AS T2 ON T1.id  =  T2.country_id WHERE T1.name  =  "England";	soccer_1
SELECT avg(weight) FROM Player;	soccer_1
SELECT max(weight) ,  min(weight) FROM Player;	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating  >  ( SELECT avg(overall_rating) FROM Player_Attributes );	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.dribbling  =  ( SELECT max(overall_rating) FROM Player_Attributes);	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing  >  90 AND T2.preferred_foot  =  "right";	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot  =  "left" AND T2.overall_rating  >=  85 AND T2.overall_rating  <=  90;	soccer_1
SELECT preferred_foot ,  avg(overall_rating) FROM Player_Attributes GROUP BY preferred_foot;	soccer_1
SELECT preferred_foot ,  count(*) FROM Player_Attributes WHERE overall_rating  >  80 GROUP BY preferred_foot;	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE overall_rating  >  85;	soccer_1
SELECT player_api_id FROM Player WHERE height  >=  180 AND height  <=  190 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE preferred_foot  =  "left";	soccer_1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id  =  T2.player_api_id ORDER BY overall_rating DESC LIMIT 3;	soccer_1
SELECT DISTINCT T1.player_name ,  T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id  =  T2.player_api_id ORDER BY potential DESC LIMIT 5;	soccer_1
SELECT count(*) FROM performance;	performance_attendance
SELECT HOST FROM performance ORDER BY Attendance ASC;	performance_attendance
SELECT Date ,  LOCATION FROM performance;	performance_attendance
SELECT Attendance FROM performance WHERE LOCATION  =  "TD Garden" OR LOCATION  =  "Bell Centre";	performance_attendance
SELECT avg(Attendance) FROM performance;	performance_attendance
SELECT Date FROM performance ORDER BY Attendance DESC LIMIT 1;	performance_attendance
SELECT LOCATION ,  COUNT(*) FROM performance GROUP BY LOCATION;	performance_attendance
SELECT LOCATION FROM performance GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1;	performance_attendance
SELECT LOCATION FROM performance GROUP BY LOCATION HAVING COUNT(*)  >=  2;	performance_attendance
SELECT LOCATION FROM performance WHERE Attendance  >  2000 INTERSECT SELECT LOCATION FROM performance WHERE Attendance  <  1000;	performance_attendance
SELECT T2.Name ,  T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID;	performance_attendance
SELECT T2.Name ,  T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID ORDER BY T2.Name ASC;	performance_attendance
SELECT T3.Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID WHERE T2.Role  =  "Violin";	performance_attendance
SELECT T2.Name ,  T3.Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID ORDER BY T3.Attendance DESC;	performance_attendance
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM member_attendance);	performance_attendance
SELECT DISTINCT building FROM classroom WHERE capacity  >  50;	college_2
SELECT DISTINCT building FROM classroom WHERE capacity  >  50;	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton';	college_2
SELECT count(*) FROM classroom WHERE building != 'Lamberton';	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department);	college_2
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department);	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100;	college_2
SELECT building ,  room_number FROM classroom WHERE capacity BETWEEN 50 AND 100;	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1;	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1;	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1;	college_2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1;	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton';	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton';	college_2
SELECT count(DISTINCT s_id) FROM advisor;	college_2
SELECT count(DISTINCT s_id) FROM advisor;	college_2
SELECT count(DISTINCT dept_name) FROM course;	college_2
SELECT count(DISTINCT dept_name) FROM course;	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics';	college_2
SELECT count(DISTINCT course_id) FROM course WHERE dept_name  =  'Physics';	college_2
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2;	college_2
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2;	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1;	college_2
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1;	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq);	college_2
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq);	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq);	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq);	college_2
SELECT COUNT (DISTINCT id) FROM teaches;	college_2
SELECT COUNT (DISTINCT id) FROM teaches;	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance';	college_2
SELECT sum(budget) FROM department WHERE dept_name  =  'Marketing' OR dept_name  =  'Finance';	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%';	college_2
SELECT dept_name FROM instructor WHERE name LIKE '%Soisalon%';	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50;	college_2
SELECT count(*) FROM classroom WHERE building  =  'Lamberton' AND capacity  <  50;	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department);	college_2
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department);	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1;	college_2
SELECT name FROM instructor WHERE dept_name  =  'Statistics' ORDER BY salary LIMIT 1;	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology';	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' INTERSECT SELECT title FROM course WHERE dept_name  =  'Psychology';	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology';	college_2
SELECT title FROM course WHERE dept_name  =  'Statistics' EXCEPT SELECT title FROM course WHERE dept_name  =  'Psychology';	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT id FROM teaches WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT id FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010;	college_2
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE YEAR  =  2009 OR YEAR  =  2010;	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3;	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3;	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1;	college_2
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1;	college_2
SELECT title FROM course ORDER BY title ,  credits;	college_2
SELECT title FROM course ORDER BY title ,  credits;	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1;	college_2
SELECT dept_name FROM department ORDER BY budget LIMIT 1;	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC;	college_2
SELECT dept_name ,  building FROM department ORDER BY budget DESC;	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1;	college_2
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1;	college_2
SELECT * FROM instructor ORDER BY salary;	college_2
SELECT * FROM instructor ORDER BY salary;	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred;	college_2
SELECT name ,  dept_name FROM student ORDER BY tot_cred;	college_2
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title;	college_2
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title;	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1;	college_2
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id  =  T2.i_id GROUP BY T2.i_id HAVING count(*)  >  1;	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1;	college_2
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id  =  T2.s_id GROUP BY T2.s_id HAVING count(*)  >  1;	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building;	college_2
SELECT count(*) ,  building FROM classroom WHERE capacity  >  50 GROUP BY building;	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building;	college_2
SELECT max(capacity) ,  avg(capacity) ,  building FROM classroom GROUP BY building;	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1;	college_2
SELECT title FROM course GROUP BY title HAVING count(*)  >  1;	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name;	college_2
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name;	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor);	college_2
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor);	college_2
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR;	college_2
SELECT count(*) ,  semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR;	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;	college_2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1;	college_2
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1;	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1;	college_2
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1;	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name;	college_2
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name;	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1;	college_2
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1;	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History';	college_2
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id  =  T2.id WHERE T2.dept_name  =  'History';	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History';	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'History';	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq;	college_2
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq;	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq);	college_2
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq);	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance');	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance');	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry');	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id  =  T2.course_id WHERE T2.title  =  'Differential Geometry');	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003);	college_2
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003);	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010;	college_2
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010;	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming';	college_2
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id  =  T2.id JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T3.title  =  'C Programming';	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math';	college_2
SELECT T2.name ,  T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math';	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred;	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred;	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing');	college_2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'Mobile Computing');	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1;	college_2
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1;	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches);	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches);	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches;	college_2
SELECT id FROM instructor EXCEPT SELECT id FROM teaches;	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring');	college_2
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester  =  'Spring');	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1;	college_2
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1;	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1;	college_2
SELECT avg(T1.salary) ,  count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name  =  T2.dept_name ORDER BY T2.budget DESC LIMIT 1;	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom);	college_2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom);	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology');	college_2
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.dept_name  =  'Biology');	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name;	college_2
SELECT count(DISTINCT T2.id) ,  count(DISTINCT T3.id) ,  T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name  =  T2.dept_name JOIN instructor AS T3 ON T1.dept_name  =  T3.dept_name GROUP BY T3.dept_name;	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance');	college_2
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id  =  T2.id WHERE T2.course_id IN (SELECT T4.prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id  =  T4.course_id WHERE T3.title  =  'International Finance');	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics');	college_2
SELECT name ,  salary FROM instructor WHERE salary  <  (SELECT avg(salary) FROM instructor WHERE dept_name  =  'Physics');	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics';	college_2
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id  =  T2.course_id JOIN student AS T3 ON T2.id  =  T3.id WHERE T1.dept_name  =  'Statistics';	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title;	college_2
SELECT T2.building ,  T2.room_number ,  T2.semester ,  T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE T1.dept_name  =  'Psychology' ORDER BY T1.title;	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.';	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.';	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000;	college_2
SELECT name FROM instructor WHERE dept_name  =  'Comp. Sci.'  AND salary  >  80000;	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID;	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID;	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art';	college_2
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID WHERE T1.dept_name  =  'Art';	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%';	college_2
SELECT name FROM instructor WHERE name LIKE '%dar%';	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name;	college_2
SELECT DISTINCT name FROM  instructor ORDER BY name;	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 UNION SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 INTERSECT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT course_id FROM SECTION WHERE semester  =  'Fall' AND YEAR  =  2009 EXCEPT SELECT course_id FROM SECTION WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor);	college_2
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor);	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester  =  'Spring' AND YEAR  =  2010;	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000;	college_2
SELECT dept_name ,  AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary)  >  42000;	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology');	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology');	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology');	college_2
SELECT name FROM instructor WHERE salary  >  (SELECT max(salary) FROM instructor WHERE dept_name  =  'Biology');	college_2
SELECT count(*) FROM debate;	debate
SELECT Venue FROM debate ORDER BY Num_of_Audience ASC;	debate
SELECT Date ,  Venue FROM debate;	debate
SELECT Date FROM debate WHERE Num_of_Audience  >  150;	debate
SELECT Name FROM  people WHERE Age  =  35 OR Age  =  36;	debate
SELECT Party FROM people ORDER BY Age ASC LIMIT 1;	debate
SELECT Party ,  COUNT(*) FROM people GROUP BY Party;	debate
SELECT Party FROM people GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1;	debate
SELECT DISTINCT Venue FROM debate;	debate
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID;	debate
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Negative  =  T3.People_ID ORDER BY T3.Name ASC;	debate
SELECT T3.Name FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID WHERE T2.Num_of_Audience  >  200;	debate
SELECT T2.Name ,  COUNT(*) FROM debate_people AS T1 JOIN people AS T2 ON T1.Affirmative  =  T2.People_ID GROUP BY T2.Name;	debate
SELECT T2.Name FROM debate_people AS T1 JOIN people AS T2 ON T1.Negative  =  T2.People_ID GROUP BY T2.Name HAVING COUNT(*)  >=  2;	debate
SELECT Name FROM people WHERE People_id NOT IN (SELECT Affirmative FROM debate_people);	debate
SELECT customer_details FROM customers ORDER BY customer_details;	insurance_and_eClaims
SELECT customer_details FROM customers ORDER BY customer_details;	insurance_and_eClaims
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.customer_details  =  "Dayana Robel";	insurance_and_eClaims
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.customer_details  =  "Dayana Robel";	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1;	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1;	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2;	insurance_and_eClaims
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*)  >  2;	insurance_and_eClaims
SELECT sum(amount_piad) ,  avg(amount_piad) FROM claim_headers;	insurance_and_eClaims
SELECT sum(amount_piad) ,  avg(amount_piad) FROM claim_headers;	insurance_and_eClaims
SELECT sum(t1.amount_claimed) FROM claim_headers AS t1 JOIN claims_documents AS t2 ON t1.claim_header_id  =  t2.claim_id WHERE t2.created_date  =  (SELECT created_date FROM claims_documents ORDER BY created_date LIMIT 1);	insurance_and_eClaims
SELECT sum(t1.amount_claimed) FROM claim_headers AS t1 JOIN claims_documents AS t2 ON t1.claim_header_id  =  t2.claim_id WHERE t2.created_date  =  (SELECT created_date FROM claims_documents ORDER BY created_date LIMIT 1);	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_claimed  =  (SELECT max(amount_claimed) FROM claim_headers);	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_claimed  =  (SELECT max(amount_claimed) FROM claim_headers);	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_piad  =  (SELECT min(amount_piad) FROM claim_headers);	insurance_and_eClaims
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_piad  =  (SELECT min(amount_piad) FROM claim_headers);	insurance_and_eClaims
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id;	insurance_and_eClaims
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id;	insurance_and_eClaims
SELECT count(*) FROM claims_processing_stages;	insurance_and_eClaims
SELECT count(*) FROM claims_processing_stages;	insurance_and_eClaims
SELECT t2.claim_status_name FROM claims_processing AS t1 JOIN claims_processing_stages AS t2 ON t1.claim_stage_id  =  t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1;	insurance_and_eClaims
SELECT t2.claim_status_name FROM claims_processing AS t1 JOIN claims_processing_stages AS t2 ON t1.claim_stage_id  =  t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1;	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%";	insurance_and_eClaims
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%";	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy";	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy";	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy" OR t1.policy_type_code  =  "Uniform";	insurance_and_eClaims
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.policy_type_code  =  "Deputy" OR t1.policy_type_code  =  "Uniform";	insurance_and_eClaims
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff;	insurance_and_eClaims
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff;	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code;	insurance_and_eClaims
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code;	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1;	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1;	insurance_and_eClaims
SELECT claim_status_description FROM claims_processing_stages WHERE claim_status_name  =  "Open";	insurance_and_eClaims
SELECT claim_status_description FROM claims_processing_stages WHERE claim_status_name  =  "Open";	insurance_and_eClaims
SELECT count(DISTINCT claim_outcome_code) FROM claims_processing;	insurance_and_eClaims
SELECT count(DISTINCT claim_outcome_code) FROM claims_processing;	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.start_date  =  (SELECT max(start_date) FROM policies);	insurance_and_eClaims
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.start_date  =  (SELECT max(start_date) FROM policies);	insurance_and_eClaims
SELECT count(*) FROM Accounts;	customers_and_invoices
SELECT count(*) FROM Accounts;	customers_and_invoices
SELECT count(DISTINCT customer_id) FROM Accounts;	customers_and_invoices
SELECT count(DISTINCT customer_id) FROM Accounts;	customers_and_invoices
SELECT account_id ,  date_account_opened ,  account_name ,  other_account_details FROM Accounts;	customers_and_invoices
SELECT account_id ,  date_account_opened ,  account_name ,  other_account_details FROM Accounts;	customers_and_invoices
SELECT T1.account_id ,  T1.date_account_opened ,  T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  'Meaghan';	customers_and_invoices
SELECT T1.account_id ,  T1.date_account_opened ,  T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  'Meaghan';	customers_and_invoices
SELECT T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Meaghan" AND T2.customer_last_name  =  "Keeling";	customers_and_invoices
SELECT T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Meaghan" AND T2.customer_last_name  =  "Keeling";	customers_and_invoices
SELECT T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "900";	customers_and_invoices
SELECT T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.account_name  =  "900";	customers_and_invoices
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts);	customers_and_invoices
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts);	customers_and_invoices
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name ,  T1.phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id;	customers_and_invoices
SELECT DISTINCT T1.customer_first_name ,  T1.customer_last_name ,  T1.phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id  =  T2.customer_id;	customers_and_invoices
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts;	customers_and_invoices
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts;	customers_and_invoices
SELECT count(*) ,  customer_id FROM Accounts GROUP BY customer_id;	customers_and_invoices
SELECT count(*) ,  customer_id FROM Accounts GROUP BY customer_id;	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name ,  count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id;	customers_and_invoices
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name ,  count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id;	customers_and_invoices
SELECT T2.customer_first_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2;	customers_and_invoices
SELECT T2.customer_first_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2;	customers_and_invoices
SELECT count(*) FROM Customers;	customers_and_invoices
SELECT count(*) FROM Customers;	customers_and_invoices
SELECT gender ,  count(*) FROM Customers GROUP BY gender;	customers_and_invoices
SELECT gender ,  count(*) FROM Customers GROUP BY gender;	customers_and_invoices
SELECT count(*) FROM Financial_transactions;	customers_and_invoices
SELECT count(*) FROM Financial_transactions;	customers_and_invoices
SELECT count(*) ,  account_id FROM Financial_transactions;	customers_and_invoices
SELECT count(*) ,  account_id FROM Financial_transactions;	customers_and_invoices
SELECT count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id WHERE T2.account_name  =  "337";	customers_and_invoices
SELECT count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id WHERE T2.account_name  =  "337";	customers_and_invoices
SELECT avg(transaction_amount) ,  min(transaction_amount) ,  max(transaction_amount) ,   sum(transaction_amount) FROM Financial_transactions;	customers_and_invoices
SELECT avg(transaction_amount) ,  min(transaction_amount) ,  max(transaction_amount) ,   sum(transaction_amount) FROM Financial_transactions;	customers_and_invoices
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount  >  (SELECT avg(transaction_amount) FROM Financial_transactions);	customers_and_invoices
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount  >  (SELECT avg(transaction_amount) FROM Financial_transactions);	customers_and_invoices
SELECT transaction_type ,  sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type;	customers_and_invoices
SELECT transaction_type ,  sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type;	customers_and_invoices
SELECT T2.account_name ,  T1.account_id ,  count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id;	customers_and_invoices
SELECT T2.account_name ,  T1.account_id ,  count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id;	customers_and_invoices
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT T1.account_id ,  T2.account_name FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id HAVING count(*)  >=  4;	customers_and_invoices
SELECT T1.account_id ,  T2.account_name FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id  =  T2.account_id GROUP BY T1.account_id HAVING count(*)  >=  4;	customers_and_invoices
SELECT DISTINCT product_size FROM Products;	customers_and_invoices
SELECT DISTINCT product_size FROM Products;	customers_and_invoices
SELECT DISTINCT product_color FROM Products;	customers_and_invoices
SELECT DISTINCT product_color FROM Products;	customers_and_invoices
SELECT invoice_number ,  count(*) FROM Financial_transactions GROUP BY invoice_number;	customers_and_invoices
SELECT invoice_number ,  count(*) FROM Financial_transactions GROUP BY invoice_number;	customers_and_invoices
SELECT T2.invoice_number ,  T2.invoice_date FROM Financial_transactions AS T1 JOIN Invoices AS T2 ON T1.invoice_number  =  T2.invoice_number GROUP BY T1.invoice_number ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT T2.invoice_number ,  T2.invoice_date FROM Financial_transactions AS T1 JOIN Invoices AS T2 ON T1.invoice_number  =  T2.invoice_number GROUP BY T1.invoice_number ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT count(*) FROM Invoices;	customers_and_invoices
SELECT count(*) FROM Invoices;	customers_and_invoices
SELECT T1.invoice_date ,  T1.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id;	customers_and_invoices
SELECT T1.invoice_date ,  T1.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id;	customers_and_invoices
SELECT order_id ,  count(*) FROM Invoices GROUP BY order_id;	customers_and_invoices
SELECT order_id ,  count(*) FROM Invoices GROUP BY order_id;	customers_and_invoices
SELECT T2.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id GROUP BY T2.order_id HAVING count(*)  >  2;	customers_and_invoices
SELECT T2.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id GROUP BY T2.order_id HAVING count(*)  >  2;	customers_and_invoices
SELECT T2.customer_last_name ,  T1.customer_id ,  T2.phone_number FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT T2.customer_last_name ,  T1.customer_id ,  T2.phone_number FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1;	customers_and_invoices
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id;	customers_and_invoices
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id;	customers_and_invoices
SELECT T2.product_name ,  sum(T1.product_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id GROUP BY T2.product_name;	customers_and_invoices
SELECT T2.product_name ,  sum(T1.product_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id GROUP BY T2.product_name;	customers_and_invoices
SELECT order_id ,  count(*) FROM Order_items GROUP BY order_id;	customers_and_invoices
SELECT order_id ,  count(*) FROM Order_items GROUP BY order_id;	customers_and_invoices
SELECT product_id ,  count(DISTINCT order_id) FROM Order_items GROUP BY product_id;	customers_and_invoices
SELECT product_id ,  count(DISTINCT order_id) FROM Order_items GROUP BY product_id;	customers_and_invoices
SELECT T2.product_name ,  count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id JOIN Orders AS T3 ON T3.order_id  =  T1.order_id GROUP BY T2.product_name;	customers_and_invoices
SELECT T2.product_name ,  count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id JOIN Orders AS T3 ON T3.order_id  =  T1.order_id GROUP BY T2.product_name;	customers_and_invoices
SELECT order_id ,  count(DISTINCT product_id) FROM Order_items GROUP BY order_id;	customers_and_invoices
SELECT order_id ,  count(DISTINCT product_id) FROM Order_items GROUP BY order_id;	customers_and_invoices
SELECT order_id ,  sum(product_quantity) FROM Order_items GROUP BY order_id;	customers_and_invoices
SELECT order_id ,  sum(product_quantity) FROM Order_items GROUP BY order_id;	customers_and_invoices
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items );	customers_and_invoices
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items );	customers_and_invoices
SELECT count(*) FROM Church WHERE Open_Date  <  1850;	wedding
SELECT name ,  open_date ,  organized_by FROM Church;	wedding
SELECT name FROM church ORDER BY open_date DESC;	wedding
SELECT open_date FROM church GROUP BY open_date HAVING count(*)  >=  2;	wedding
SELECT organized_by ,  name FROM church WHERE open_date BETWEEN 1830 AND 1840;	wedding
SELECT open_date ,  count(*) FROM church GROUP BY open_date;	wedding
SELECT name ,  open_date FROM church ORDER BY open_date DESC LIMIT 3;	wedding
SELECT count(*) FROM people WHERE is_male  =  'F' AND age  >  30;	wedding
SELECT country FROM people WHERE age  <  25 INTERSECT SELECT country FROM people WHERE age  >  30;	wedding
SELECT min(age) ,  max(age) ,  avg(age) FROM people;	wedding
SELECT name ,  country FROM people WHERE age  <  (SELECT avg(age) FROM people);	wedding
SELECT T2.name ,  T3.name FROM wedding AS T1 JOIN people AS T2 ON T1.male_id  =  T2.people_id JOIN people AS T3 ON T1.female_id  =  T3.people_id WHERE T1.year  >  2014;	wedding
SELECT name ,  age FROM people WHERE is_male  =  'T' AND people_id NOT IN (SELECT male_id FROM wedding);	wedding
SELECT name FROM church EXCEPT SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.church_id  =  T2.church_id WHERE T2.year  =  2015;	wedding
SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.church_id  =  T2.church_id GROUP BY T1.church_id HAVING count(*)  >=  2;	wedding
SELECT T2.name FROM wedding AS T1 JOIN people AS T2 ON T1.female_id  =  T2.people_id WHERE T1.year  =  2016 AND T2.is_male  =  'F' AND T2.country  =  'Canada';	wedding
SELECT count(*) FROM wedding WHERE YEAR  =  2016;	wedding
SELECT T4.name FROM wedding AS T1 JOIN people AS T2 ON T1.male_id  =  T2.people_id JOIN people AS T3 ON T1.female_id  =  T3.people_id JOIN church AS T4 ON T4.church_id  =  T1.church_id WHERE T2.age  >  30 OR T3.age  >  30;	wedding
SELECT country ,  count(*) FROM people GROUP BY country;	wedding
SELECT COUNT (DISTINCT church_id) FROM wedding WHERE YEAR  =  2016;	wedding
SELECT count(*) FROM artist;	theme_gallery
SELECT count(*) FROM artist;	theme_gallery
SELECT name ,  age ,  country FROM artist ORDER BY Year_Join;	theme_gallery
SELECT name ,  age ,  country FROM artist ORDER BY Year_Join;	theme_gallery
SELECT DISTINCT country FROM artist;	theme_gallery
SELECT DISTINCT country FROM artist;	theme_gallery
SELECT name ,  year_join FROM artist WHERE country != 'United States';	theme_gallery
SELECT name ,  year_join FROM artist WHERE country != 'United States';	theme_gallery
SELECT count(*) FROM artist WHERE age  >  46 AND year_join  >  1990;	theme_gallery
SELECT count(*) FROM artist WHERE age  >  46 AND year_join  >  1990;	theme_gallery
SELECT avg(age) ,  min(age) FROM artist WHERE country  =  'United States';	theme_gallery
SELECT avg(age) ,  min(age) FROM artist WHERE country  =  'United States';	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1;	theme_gallery
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1;	theme_gallery
SELECT count(*) FROM exhibition WHERE YEAR  >=  2005;	theme_gallery
SELECT count(*) FROM exhibition WHERE YEAR  >=  2005;	theme_gallery
SELECT theme ,  YEAR FROM exhibition WHERE ticket_price  <  15;	theme_gallery
SELECT theme ,  YEAR FROM exhibition WHERE ticket_price  <  15;	theme_gallery
SELECT T2.name ,  count(*) FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id;	theme_gallery
SELECT T2.name ,  count(*) FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id;	theme_gallery
SELECT T2.name , T2.country FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id ORDER BY count(*) DESC LIMIT 1;	theme_gallery
SELECT T2.name , T2.country FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id ORDER BY count(*) DESC LIMIT 1;	theme_gallery
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition);	theme_gallery
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition);	theme_gallery
SELECT T1.theme ,  T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.ticket_price  >  (SELECT avg(ticket_price) FROM exhibition);	theme_gallery
SELECT T1.theme ,  T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.ticket_price  >  (SELECT avg(ticket_price) FROM exhibition);	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009;	theme_gallery
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009;	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC;	theme_gallery
SELECT theme ,  YEAR FROM exhibition ORDER BY ticket_price DESC;	theme_gallery
SELECT T2.theme ,  T1.date ,  T1.attendance FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T2.year  =  2004;	theme_gallery
SELECT T2.theme ,  T1.date ,  T1.attendance FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T2.year  =  2004;	theme_gallery
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.year  =  2004;	theme_gallery
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id WHERE T1.year  =  2004;	theme_gallery
SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  <  100 INTERSECT SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  500;	theme_gallery
SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  <  100 INTERSECT SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  500;	theme_gallery
SELECT count(*) FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  100 OR T2.ticket_price  <  10;	theme_gallery
SELECT count(*) FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  100 OR T2.ticket_price  <  10;	theme_gallery
SELECT T3.name FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id JOIN artist AS T3 ON T3.artist_id  =  T2.artist_id GROUP BY T3.artist_id HAVING avg(T1.attendance)  >  200;	theme_gallery
SELECT T3.name FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id JOIN artist AS T3 ON T3.artist_id  =  T2.artist_id GROUP BY T3.artist_id HAVING avg(T1.attendance)  >  200;	theme_gallery
SELECT i_id FROM item WHERE title  =  "orange";	epinions_1
SELECT * FROM item;	epinions_1
SELECT count(*) FROM review;	epinions_1
SELECT count(*) FROM useracct;	epinions_1
SELECT avg(rating) ,  max(rating) FROM review;	epinions_1
SELECT min(rank) FROM review;	epinions_1
SELECT count(DISTINCT u_id) FROM review;	epinions_1
SELECT count(DISTINCT i_id) FROM review;	epinions_1
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review);	epinions_1
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review);	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  =  10;	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  >  (SELECT avg(rating) FROM review);	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  <  5;	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  >  8 INTERSECT SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rating  <  5;	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id WHERE T2.rank  >  3 INTERSECT SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id HAVING avg(T2.rating)  >  5;	epinions_1
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rating) LIMIT 1;	epinions_1
SELECT title FROM item ORDER BY title;	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id GROUP BY T2.u_id ORDER BY count(*) DESC LIMIT 1;	epinions_1
SELECT T1.title ,  T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rating) DESC LIMIT 1;	epinions_1
SELECT T1.title ,  T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rank) DESC LIMIT 1;	epinions_1
SELECT T1.name ,  avg(T2.rating) FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id GROUP BY T2.u_id;	epinions_1
SELECT T1.name ,  count(*) FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id GROUP BY T2.u_id;	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.u_id  =  T2.u_id ORDER BY T2.rating DESC LIMIT 1;	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id  =  T2.source_u_id GROUP BY T2.source_u_id ORDER BY avg(trust) DESC LIMIT 1;	epinions_1
SELECT T1.name ,  avg(trust) FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id  =  T2.target_u_id GROUP BY T2.target_u_id;	epinions_1
SELECT T1.name FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id  =  T2.target_u_id ORDER BY trust LIMIT 1;	epinions_1
SELECT title FROM item WHERE i_id NOT IN (SELECT i_id FROM review);	epinions_1
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review);	epinions_1
SELECT count(*) FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review);	epinions_1
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review);	epinions_1
SELECT count(*) FROM player;	riding_club
SELECT Player_name FROM player ORDER BY Votes ASC;	riding_club
SELECT Gender ,  Occupation FROM player;	riding_club
SELECT Player_name ,  residence FROM player WHERE Occupation != "Researcher";	riding_club
SELECT Sponsor_name FROM player WHERE Residence  =  "Brandon" OR Residence  =  "Birtle";	riding_club
SELECT Player_name FROM player ORDER BY Votes DESC LIMIT 1;	riding_club
SELECT Occupation ,  COUNT(*) FROM player GROUP BY Occupation;	riding_club
SELECT Occupation FROM player GROUP BY Occupation ORDER BY COUNT(*) DESC LIMIT 1;	riding_club
SELECT Residence FROM player GROUP BY Residence HAVING COUNT(*)  >=  2;	riding_club
SELECT T3.Player_name ,  T2.coach_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID;	riding_club
SELECT T3.Player_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID WHERE T2.Rank  =  1;	riding_club
SELECT T3.Player_name ,  T3.gender FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID WHERE T1.Starting_year  >  2011;	riding_club
SELECT T3.Player_name ,  T2.coach_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID ORDER BY T3.Votes DESC;	riding_club
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM player_coach);	riding_club
SELECT Residence FROM player WHERE gender  =  "M" INTERSECT SELECT Residence FROM player WHERE gender  =  "F";	riding_club
SELECT T1.club_id ,  T1.club_name, count(*) FROM club AS T1 JOIN coach AS T2 ON T1.club_id  =  T2.club_id GROUP BY T1.club_id;	riding_club
SELECT T1.club_id ,  T1.gold FROM match_result AS T1 JOIN coach AS T2 ON T1.club_id  =  T2.club_id GROUP BY T1.club_id ORDER BY count(*) DESC LIMIT 1;	riding_club
SELECT count(*) FROM gymnast;	gymnast
SELECT count(*) FROM gymnast;	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC;	gymnast
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC;	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC;	gymnast
SELECT Total_Points FROM gymnast ORDER BY Floor_Exercise_Points DESC;	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast;	gymnast
SELECT avg(Horizontal_Bar_Points) FROM gymnast;	gymnast
SELECT Name FROM People ORDER BY Name ASC;	gymnast
SELECT Name FROM People ORDER BY Name ASC;	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID;	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID;	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T2.Hometown != "Santo Domingo";	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T2.Hometown != "Santo Domingo";	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1;	gymnast
SELECT Age FROM people ORDER BY Height DESC LIMIT 1;	gymnast
SELECT Name FROM People ORDER BY Age DESC LIMIT 5;	gymnast
SELECT Name FROM People ORDER BY Age DESC LIMIT 5;	gymnast
SELECT T1.Total_Points FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Age ASC LIMIT 1;	gymnast
SELECT T1.Total_Points FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Age ASC LIMIT 1;	gymnast
SELECT avg(T2.Age) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID;	gymnast
SELECT avg(T2.Age) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID;	gymnast
SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T1.Total_Points  >  57.5;	gymnast
SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID WHERE T1.Total_Points  >  57.5;	gymnast
SELECT T2.Hometown ,  COUNT(*) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown;	gymnast
SELECT T2.Hometown ,  COUNT(*) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown;	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1;	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1;	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown HAVING COUNT(*)  >=  2;	gymnast
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID GROUP BY T2.Hometown HAVING COUNT(*)  >=  2;	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Height ASC;	gymnast
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T2.Height ASC;	gymnast
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID;	gymnast
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID;	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20;	gymnast
SELECT Hometown FROM people WHERE Age  >  23 INTERSECT SELECT Hometown FROM people WHERE Age  <  20;	gymnast
SELECT count(DISTINCT Hometown) FROM people;	gymnast
SELECT count(DISTINCT Hometown) FROM people;	gymnast
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T1.Total_Points DESC;	gymnast
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T1.Total_Points DESC;	gymnast
SELECT sum(T2.balance) FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T1.name != 'Brown';	small_bank_1
SELECT sum(T2.balance) FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T1.name != 'Brown';	small_bank_1
SELECT count(*) FROM accounts;	small_bank_1
SELECT count(*) FROM accounts;	small_bank_1
SELECT sum(balance) FROM checking;	small_bank_1
SELECT sum(balance) FROM checking;	small_bank_1
SELECT avg(balance) FROM checking;	small_bank_1
SELECT avg(balance) FROM checking;	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings);	small_bank_1
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings);	small_bank_1
SELECT T1.custid ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT max(balance) FROM checking);	small_bank_1
SELECT T1.custid ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT max(balance) FROM checking);	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name LIKE '%ee%';	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name LIKE '%ee%';	small_bank_1
SELECT T2.balance ,  T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T1.name  =  'Brown';	small_bank_1
SELECT T2.balance ,  T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T1.name  =  'Brown';	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM checking) INTERSECT SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM savings);	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM checking) INTERSECT SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM savings);	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name IN (SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM savings));	small_bank_1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name IN (SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  >  (SELECT avg(balance) FROM savings));	small_bank_1
SELECT name FROM accounts ORDER BY name;	small_bank_1
SELECT name FROM accounts ORDER BY name;	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance LIMIT 1;	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance LIMIT 1;	small_bank_1
SELECT T1.name ,  T2.balance + T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  >  (SELECT avg(balance) FROM savings);	small_bank_1
SELECT T1.name ,  T2.balance + T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  >  (SELECT avg(balance) FROM savings);	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1;	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1;	small_bank_1
SELECT count(*) ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name;	small_bank_1
SELECT count(*) ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name;	small_bank_1
SELECT sum(T2.balance) ,  T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name;	small_bank_1
SELECT sum(T2.balance) ,  T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name;	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM checking);	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM checking);	small_bank_1
SELECT T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance DESC LIMIT 1;	small_bank_1
SELECT T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance DESC LIMIT 1;	small_bank_1
SELECT T1.balance + T2.balance FROM checking AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T1.balance + T2.balance;	small_bank_1
SELECT T1.balance + T2.balance FROM checking AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T1.balance + T2.balance;	small_bank_1
SELECT T2.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1;	small_bank_1
SELECT T2.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T3.balance LIMIT 1;	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid;	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid;	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance DESC;	small_bank_1
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance DESC;	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T2.balance  >  T3.balance;	small_bank_1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T2.balance  >  T3.balance;	small_bank_1
SELECT T1.name ,  T3.balance + T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  <  T2.balance;	small_bank_1
SELECT T1.name ,  T3.balance + T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  <  T2.balance;	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T2.balance DESC LIMIT 3;	small_bank_1
SELECT T1.name ,  T2.balance FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid ORDER BY T2.balance DESC LIMIT 3;	small_bank_1
SELECT count(*) FROM browser WHERE market_share  >=  5;	browser_web
SELECT name FROM browser ORDER BY market_share DESC;	browser_web
SELECT id ,  name ,  market_share FROM browser;	browser_web
SELECT max(market_share) ,  min(market_share) ,  avg(market_share) FROM browser;	browser_web
SELECT id ,  market_share FROM browser WHERE name  =  'Safari';	browser_web
SELECT name ,  operating_system FROM web_client_accelerator WHERE CONNECTION != 'Broadband';	browser_web
SELECT T1.name FROM browser AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id  =  T2.browser_id JOIN web_client_accelerator AS T3 ON T2.accelerator_id  =  T3.id WHERE T3.name  =  'CProxy' AND T2.compatible_since_year  >  1998;	browser_web
SELECT T1.id ,  T1.Name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2;	browser_web
SELECT T1.id ,  T1.name FROM browser AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id  =  T2.browser_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;	browser_web
SELECT T1.compatible_since_year FROM accelerator_compatible_browser AS T1 JOIN browser AS T2 ON T1.browser_id  =  T2.id JOIN web_client_accelerator AS T3 ON T1.accelerator_id  =  T3.id WHERE T3.name  =  'CACHEbox' AND T2.name  =  'Internet Explorer';	browser_web
SELECT count(DISTINCT client) FROM web_client_accelerator;	browser_web
SELECT count(*) FROM web_client_accelerator WHERE id NOT IN ( SELECT accelerator_id FROM accelerator_compatible_browser );	browser_web
SELECT DISTINCT T1.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T3.market_share  >  15;	browser_web
SELECT T3.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T1.name  =  'CACHEbox' INTERSECT SELECT T3.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T1.name  =  'Fasterfox';	browser_web
SELECT name ,  operating_system FROM web_client_accelerator EXCEPT SELECT T1.name ,  T1.operating_system FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T3.name  =  'Opera';	browser_web
SELECT name FROM web_client_accelerator WHERE name LIKE "%Opera%";	browser_web
SELECT Operating_system ,  count(*) FROM web_client_accelerator GROUP BY Operating_system;	browser_web
SELECT T2.name ,  T3.name FROM accelerator_compatible_browser AS T1 JOIN browser AS T2 ON T1.browser_id  =  T2.id JOIN web_client_accelerator AS T3 ON T1.accelerator_id  =  T3.id ORDER BY T1.compatible_since_year DESC;	browser_web
SELECT count(*) FROM wrestler;	wrestler
SELECT count(*) FROM wrestler;	wrestler
SELECT Name FROM wrestler ORDER BY Days_held DESC;	wrestler
SELECT Name FROM wrestler ORDER BY Days_held DESC;	wrestler
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1;	wrestler
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1;	wrestler
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "Tokyo , Japan";	wrestler
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "Tokyo , Japan";	wrestler
SELECT Name ,  LOCATION FROM wrestler;	wrestler
SELECT Name ,  LOCATION FROM wrestler;	wrestler
SELECT Elimination_Move FROM Elimination WHERE Team  =  "Team Orton";	wrestler
SELECT Elimination_Move FROM Elimination WHERE Team  =  "Team Orton";	wrestler
SELECT T2.Name ,  T1.Elimination_Move FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID;	wrestler
SELECT T2.Name ,  T1.Elimination_Move FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID;	wrestler
SELECT T2.Name ,  T1.Team FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC;	wrestler
SELECT T2.Name ,  T1.Team FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC;	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC LIMIT 1;	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID ORDER BY T2.Days_held DESC LIMIT 1;	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID WHERE T2.Days_held  >  50;	wrestler
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID  =  T2.Wrestler_ID WHERE T2.Days_held  >  50;	wrestler
SELECT Team ,  COUNT(*) FROM elimination GROUP BY Team;	wrestler
SELECT Team ,  COUNT(*) FROM elimination GROUP BY Team;	wrestler
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*)  >  3;	wrestler
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*)  >  3;	wrestler
SELECT Reign ,  Days_held FROM wrestler;	wrestler
SELECT Reign ,  Days_held FROM wrestler;	wrestler
SELECT Name FROM wrestler WHERE Days_held  <  100;	wrestler
SELECT Name FROM wrestler WHERE Days_held  <  100;	wrestler
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1;	wrestler
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1;	wrestler
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*)  >  2;	wrestler
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*)  >  2;	wrestler
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimination);	wrestler
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimination);	wrestler
SELECT Team FROM Elimination WHERE Eliminated_By  =  "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By  =  "Benjamin";	wrestler
SELECT Team FROM Elimination WHERE Eliminated_By  =  "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By  =  "Benjamin";	wrestler
SELECT COUNT (DISTINCT team) FROM elimination;	wrestler
SELECT COUNT (DISTINCT team) FROM elimination;	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton";	wrestler
SELECT TIME FROM elimination WHERE Eliminated_By  =  "Punk" OR Eliminated_By  =  "Orton";	wrestler
SELECT count(*) FROM school;	school_finance
SELECT count(*) FROM school;	school_finance
SELECT school_name FROM school ORDER BY school_name;	school_finance
SELECT school_name ,  LOCATION ,  mascot FROM school;	school_finance
SELECT sum(enrollment) ,  avg(enrollment) FROM school;	school_finance
SELECT mascot FROM school WHERE enrollment  >  (SELECT avg(enrollment) FROM school);	school_finance
SELECT school_name FROM school ORDER BY enrollment LIMIT 1;	school_finance
SELECT avg(enrollment) ,  max(enrollment) ,  min(enrollment) FROM school;	school_finance
SELECT county ,  count(*) ,  sum(enrollment) FROM school GROUP BY county;	school_finance
SELECT count(DISTINCT T1.donator_name) FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  "Glenn";	school_finance
SELECT donator_name ,  sum(amount) FROM endowment GROUP BY donator_name ORDER BY sum(amount) DESC;	school_finance
SELECT school_name FROM school WHERE school_id NOT IN (SELECT school_id FROM endowment);	school_finance
SELECT T2.school_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id GROUP BY T1.school_id HAVING sum(T1.amount)  <=  10;	school_finance
SELECT T1.donator_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  'Glenn' INTERSECT SELECT T1.donator_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  'Triton';	school_finance
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount  <  9;	school_finance
SELECT amount ,  donator_name FROM endowment ORDER BY amount DESC LIMIT 1;	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001;	school_finance
SELECT count(*) FROM budget WHERE budgeted  >  3000 AND YEAR  <=  2001;	school_finance
SELECT T2.school_name ,  T1.budgeted ,  T1.invested FROM budget AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T1.year  >=  2002;	school_finance
SELECT DISTINCT donator_name FROM endowment;	school_finance
SELECT count(*) FROM budget WHERE budgeted  <  invested;	school_finance
SELECT sum(T1.budgeted) FROM budget AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T2.school_name  =  'Glenn';	school_finance
SELECT T2.school_name FROM budget AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id JOIN endowment AS T3 ON T2.school_id  =  T3.school_id GROUP BY T2.school_name HAVING sum(T1.budgeted)  >  100 OR sum(T3.amount)  >  10;	school_finance
SELECT T2.School_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id WHERE T1.amount  >  8.5 GROUP BY T1.school_id HAVING count(*)  >  1;	school_finance
SELECT count(*) FROM (SELECT * FROM endowment WHERE amount  >  8.5 GROUP BY school_id HAVING count(*)  >  1);	school_finance
SELECT T1.School_name ,  T1.Mascot ,  T1.IHSAA_Football_Class FROM school AS T1 JOIN budget AS T2 ON T1.school_id  =  T2.school_id WHERE Budgeted  >  6000 OR YEAR  <  2003 ORDER BY T2.total_budget_percent_invested ,  T2.total_budget_percent_budgeted;	school_finance
SELECT count(*) FROM building;	protein_institute
SELECT name ,  street_address ,  floors FROM building ORDER BY floors;	protein_institute
SELECT name FROM building ORDER BY height_feet DESC LIMIT 1;	protein_institute
SELECT avg(floors) ,  max(floors) ,  min(floors) FROM building;	protein_institute
SELECT count(*) FROM building WHERE height_feet  >  (SELECT avg(height_feet) FROM building) OR floors  >  (SELECT avg(floors) FROM building);	protein_institute
SELECT name FROM building WHERE height_feet  >=  200 AND floors  >=  20;	protein_institute
SELECT institution ,  LOCATION FROM institution WHERE founded  >  1990 AND TYPE  =  'Private';	protein_institute
SELECT TYPE ,  count(*) ,  sum(enrollment) FROM institution GROUP BY TYPE;	protein_institute
SELECT TYPE FROM institution GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1;	protein_institute
SELECT TYPE FROM institution WHERE founded  >  1990 AND enrollment  >=  1000;	protein_institute
SELECT name FROM building WHERE building_id NOT IN (SELECT building_id FROM institution);	protein_institute
SELECT name FROM building EXCEPT SELECT T1.name FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id WHERE T2.founded  =  2003;	protein_institute
SELECT T1.name ,  count(*) FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id GROUP BY T1.building_id;	protein_institute
SELECT T1.name ,  T1.height_feet FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id WHERE T2.founded  >  1880 GROUP BY T1.building_id HAVING count(*)  >=  2;	protein_institute
SELECT DISTINCT TYPE FROM institution;	protein_institute
SELECT T1.institution ,  count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id GROUP BY T1.institution_id;	protein_institute
SELECT count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id WHERE T1.founded  >  1880 OR T1.type  =  'Private';	protein_institute
SELECT T2.protein_name ,  T1.institution FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id;	protein_institute
SELECT count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id  =  T2.institution_id JOIN building AS T3 ON T3.building_id  =  T1.building_id WHERE T3.floors  >=  20;	protein_institute
SELECT count(*) FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM protein);	protein_institute
SELECT LOCATION FROM cinema EXCEPT SELECT LOCATION FROM cinema WHERE capacity  >  800;	cinema
SELECT LOCATION FROM cinema WHERE openning_year  =  2010 INTERSECT SELECT LOCATION FROM cinema WHERE openning_year  =  2011;	cinema
SELECT count(*) FROM cinema;	cinema
SELECT count(*) FROM cinema;	cinema
SELECT name ,  openning_year ,  capacity FROM cinema;	cinema
SELECT name ,  LOCATION FROM cinema WHERE capacity  >  (SELECT avg(capacity) FROM cinema);	cinema
SELECT DISTINCT LOCATION FROM cinema;	cinema
SELECT DISTINCT LOCATION FROM cinema;	cinema
SELECT name ,  openning_year FROM cinema ORDER BY openning_year DESC;	cinema
SELECT name ,  LOCATION FROM cinema ORDER BY capacity DESC LIMIT 1;	cinema
SELECT avg(capacity) ,  min(capacity) ,  max(capacity) FROM cinema WHERE openning_year  >=  2011;	cinema
SELECT LOCATION ,  count(*) FROM cinema GROUP BY LOCATION;	cinema
SELECT LOCATION FROM cinema WHERE openning_year  >=  2010 GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1;	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2;	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2;	cinema
SELECT title ,  directed_by FROM film;	cinema
SELECT title ,  directed_by FROM film;	cinema
SELECT DISTINCT directed_by FROM film;	cinema
SELECT DISTINCT directed_by FROM film;	cinema
SELECT directed_by ,  count(*) FROM film GROUP BY directed_by;	cinema
SELECT T2.name ,  sum(T1.show_times_per_day) FROM schedule AS T1 JOIN cinema AS T2 ON T1.cinema_id  =  T2.cinema_id GROUP BY T1.cinema_id;	cinema
SELECT T2.title ,  max(T1.price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id;	cinema
SELECT T2.title ,  max(T1.price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id;	cinema
SELECT T3.name ,  T2.title ,  T1.date ,  T1.price FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id JOIN cinema AS T3 ON T1.cinema_id  =  T3.cinema_id;	cinema
SELECT title ,  directed_by FROM film WHERE film_id NOT IN (SELECT film_id FROM schedule);	cinema
SELECT T2.directed_by FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.directed_by ORDER BY sum(T1.show_times_per_day) DESC LIMIT 1;	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1;	cinema
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1;	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%";	cinema
SELECT count(*) FROM film WHERE title LIKE "%Dummy%";	cinema
SELECT T1.good_or_bad_customer FROM customers AS T1 JOIN discount_coupons AS T2 ON T1.coupon_id  =  T2.coupon_id WHERE T2.coupon_amount  =  500;	products_for_hire
SELECT T1.customer_id ,  T1.first_name ,  count(*) FROM Customers AS T1 JOIN bookings AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id;	products_for_hire
SELECT customer_id ,  sum(amount_paid) FROM Payments GROUP BY customer_id ORDER BY sum(amount_paid) DESC LIMIT 1;	products_for_hire
SELECT T1.booking_id ,  T1.amount_of_refund FROM Bookings AS T1 JOIN Payments AS T2 ON T1.booking_id  =  T2.booking_id GROUP BY T1.booking_id ORDER BY count(*) DESC LIMIT 1;	products_for_hire
SELECT product_id FROM products_booked GROUP BY product_id HAVING count(*)  =  3;	products_for_hire
SELECT T2.product_description FROM products_booked AS T1 JOIN products_for_hire AS T2 ON T1.product_id  =  T2.product_id WHERE T1.booked_amount  =  102.76;	products_for_hire
SELECT T3.booking_start_date ,   T3.booking_end_date FROM Products_for_hire AS T1 JOIN products_booked AS T2 ON T1.product_id  =  T2.product_id JOIN bookings AS T3 ON T2.booking_id  =  T3.booking_id WHERE T1.product_name  =  'Book collection A';	products_for_hire
SELECT T2.product_name FROM view_product_availability AS T1 JOIN products_for_hire AS T2 ON T1.product_id  =  T2.product_id WHERE T1.available_yn  =  1;	products_for_hire
SELECT count(DISTINCT product_type_code) FROM products_for_hire;	products_for_hire
SELECT first_name ,  last_name ,  gender_mf FROM customers WHERE good_or_bad_customer  =  'good' ORDER BY last_name;	products_for_hire
SELECT avg(amount_due) FROM payments;	products_for_hire
SELECT max(booked_count) ,  min(booked_count) ,  avg(booked_count) FROM products_booked;	products_for_hire
SELECT DISTINCT payment_type_code FROM payments;	products_for_hire
SELECT daily_hire_cost FROM Products_for_hire WHERE product_name LIKE '%Book%';	products_for_hire
SELECT count(*) FROM Products_for_hire WHERE product_id NOT IN ( SELECT product_id FROM products_booked WHERE booked_amount  >  200 );	products_for_hire
SELECT T1.coupon_amount FROM Discount_Coupons AS T1 JOIN customers AS T2 ON T1.coupon_id  =  T2.coupon_id WHERE T2.good_or_bad_customer  =  'good' INTERSECT SELECT T1.coupon_amount FROM Discount_Coupons AS T1 JOIN customers AS T2 ON T1.coupon_id  =  T2.coupon_id WHERE T2.good_or_bad_customer  =  'bad';	products_for_hire
SELECT payment_date FROM payments WHERE amount_paid  >  300 OR payment_type_code  =  'Check';	products_for_hire
SELECT product_name ,  product_description FROM products_for_hire WHERE product_type_code  =  'Cutlery' AND daily_hire_cost  <  20;	products_for_hire
SELECT count(*) FROM phone;	phone_market
SELECT Name FROM phone ORDER BY Price ASC;	phone_market
SELECT Memory_in_G ,  Carrier FROM phone;	phone_market
SELECT DISTINCT Carrier FROM phone WHERE Memory_in_G  >  32;	phone_market
SELECT Name FROM phone WHERE Carrier  =  "Sprint" OR Carrier  =  "TMobile";	phone_market
SELECT Carrier FROM phone ORDER BY Price DESC LIMIT 1;	phone_market
SELECT Carrier ,  COUNT(*) FROM phone GROUP BY Carrier;	phone_market
SELECT Carrier FROM phone GROUP BY Carrier ORDER BY COUNT(*) DESC LIMIT 1;	phone_market
SELECT Carrier FROM phone WHERE Memory_in_G  <  32 INTERSECT SELECT Carrier FROM phone WHERE Memory_in_G  >  64;	phone_market
SELECT T3.Name ,  T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID;	phone_market
SELECT T3.Name ,  T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID ORDER BY T2.Ranking;	phone_market
SELECT T3.Name FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID WHERE T2.Num_of_shops  >  50;	phone_market
SELECT T2.Name ,  sum(T1.Num_of_stock) FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID  =  T2.Phone_ID GROUP BY T2.Name;	phone_market
SELECT T2.Name FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID  =  T2.Phone_ID GROUP BY T2.Name HAVING sum(T1.Num_of_stock)  >=  2000 ORDER BY sum(T1.Num_of_stock) DESC;	phone_market
SELECT Name FROM phone WHERE Phone_id NOT IN (SELECT Phone_ID FROM phone_market);	phone_market
SELECT count(*) FROM company;	gas_company
SELECT count(*) FROM company;	gas_company
SELECT company ,  rank FROM company ORDER BY Sales_billion DESC;	gas_company
SELECT company ,  rank FROM company ORDER BY Sales_billion DESC;	gas_company
SELECT company ,  main_industry FROM company WHERE headquarters != 'USA';	gas_company
SELECT company ,  main_industry FROM company WHERE headquarters != 'USA';	gas_company
SELECT company ,  headquarters FROM company ORDER BY market_value DESC;	gas_company
SELECT company ,  headquarters FROM company ORDER BY market_value DESC;	gas_company
SELECT min(market_value) ,  max(market_value) ,  avg(market_value) FROM company;	gas_company
SELECT min(market_value) ,  max(market_value) ,  avg(market_value) FROM company;	gas_company
SELECT DISTINCT main_industry FROM company;	gas_company
SELECT DISTINCT main_industry FROM company;	gas_company
SELECT headquarters ,  count(*) FROM company GROUP BY headquarters;	gas_company
SELECT headquarters ,  count(*) FROM company GROUP BY headquarters;	gas_company
SELECT main_industry ,  sum(market_value) FROM company GROUP BY main_industry;	gas_company
SELECT main_industry ,  sum(market_value) FROM company GROUP BY main_industry;	gas_company
SELECT main_industry ,  count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1;	gas_company
SELECT main_industry ,  count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1;	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' GROUP BY headquarters HAVING count(*)  >=  2;	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' GROUP BY headquarters HAVING count(*)  >=  2;	gas_company
SELECT station_id ,  LOCATION ,  manager_name FROM gas_station ORDER BY open_year;	gas_company
SELECT station_id ,  LOCATION ,  manager_name FROM gas_station ORDER BY open_year;	gas_company
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005;	gas_company
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005;	gas_company
SELECT LOCATION ,  count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*);	gas_company
SELECT LOCATION ,  count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*);	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas';	gas_company
SELECT headquarters FROM company WHERE main_industry  =  'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry  =  'Oil and gas';	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking';	gas_company
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry  =  'Banking';	gas_company
SELECT T2.company ,  count(*) FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id GROUP BY T1.company_id;	gas_company
SELECT T2.company ,  count(*) FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id GROUP BY T1.company_id;	gas_company
SELECT company ,  main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_company);	gas_company
SELECT company ,  main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_company);	gas_company
SELECT T3.manager_name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.company  =  'ExxonMobil';	gas_company
SELECT T3.manager_name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.company  =  'ExxonMobil';	gas_company
SELECT T3.location FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.market_value  >  100;	gas_company
SELECT T3.location FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.market_value  >  100;	gas_company
SELECT manager_name FROM gas_station WHERE open_year  >  2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1;	gas_company
SELECT manager_name FROM gas_station WHERE open_year  >  2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1;	gas_company
SELECT LOCATION FROM gas_station ORDER BY open_year;	gas_company
SELECT LOCATION FROM gas_station ORDER BY open_year;	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion;	gas_company
SELECT rank ,  company ,  market_value FROM company WHERE main_industry  =  'Banking' ORDER BY sales_billion ,  profits_billion;	gas_company
SELECT T3.location ,  T3.Representative_Name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id ORDER BY T2.Assets_billion DESC LIMIT 3;	gas_company
SELECT T3.location ,  T3.Representative_Name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id ORDER BY T2.Assets_billion DESC LIMIT 3;	gas_company
SELECT count(*) FROM region;	party_people
SELECT count(*) FROM region;	party_people
SELECT DISTINCT region_name FROM region ORDER BY Label;	party_people
SELECT DISTINCT region_name FROM region ORDER BY Label;	party_people
SELECT count(DISTINCT party_name) FROM party;	party_people
SELECT count(DISTINCT party_name) FROM party;	party_people
SELECT minister ,  took_office ,  left_office FROM party ORDER BY left_office;	party_people
SELECT minister ,  took_office ,  left_office FROM party ORDER BY left_office;	party_people
SELECT minister FROM party WHERE took_office  >  1961 OR took_office  <  1959;	party_people
SELECT minister FROM party WHERE took_office  >  1961 OR took_office  <  1959;	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party';	party_people
SELECT minister FROM party WHERE party_name != 'Progress Party';	party_people
SELECT minister ,  party_name FROM party ORDER BY took_office DESC;	party_people
SELECT minister ,  party_name FROM party ORDER BY took_office DESC;	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1;	party_people
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1;	party_people
SELECT T1.member_name ,  T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id;	party_people
SELECT T1.member_name ,  T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id;	party_people
SELECT T2.party_name ,  count(*) FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id;	party_people
SELECT T2.party_name ,  count(*) FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id;	party_people
SELECT T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id ORDER BY count(*) DESC LIMIT 1;	party_people
SELECT T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id ORDER BY count(*) DESC LIMIT 1;	party_people
SELECT T1.party_name ,  T2.region_name FROM party AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id;	party_people
SELECT T1.party_name ,  T2.region_name FROM party AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id;	party_people
SELECT party_name FROM party WHERE party_id NOT IN (SELECT party_id FROM Member);	party_people
SELECT party_name FROM party WHERE party_id NOT IN (SELECT party_id FROM Member);	party_people
SELECT member_name FROM member WHERE party_id  =  3 INTERSECT SELECT member_name FROM member WHERE party_id  =  1;	party_people
SELECT member_name FROM member WHERE party_id  =  3 INTERSECT SELECT member_name FROM member WHERE party_id  =  1;	party_people
SELECT T1.member_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id WHERE T2.Party_name != "Progress Party";	party_people
SELECT T1.member_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id WHERE T2.Party_name != "Progress Party";	party_people
SELECT count(*) FROM party_events;	party_people
SELECT count(*) FROM party_events;	party_people
SELECT T2.party_name ,  count(*) FROM party_events AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id;	party_people
SELECT T2.party_name ,  count(*) FROM party_events AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id;	party_people
SELECT member_name FROM member EXCEPT SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id  =  T2.member_in_charge_id;	party_people
SELECT member_name FROM member EXCEPT SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id  =  T2.member_in_charge_id;	party_people
SELECT T2.party_name FROM party_events AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id HAVING count(*)  >=  2;	party_people
SELECT T2.party_name FROM party_events AS T1 JOIN party AS T2 ON T1.party_id  =  T2.party_id GROUP BY T1.party_id HAVING count(*)  >=  2;	party_people
SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id  =  T2.member_in_charge_id GROUP BY T2.member_in_charge_id ORDER BY count(*) DESC LIMIT 1;	party_people
SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id  =  T2.member_in_charge_id GROUP BY T2.member_in_charge_id ORDER BY count(*) DESC LIMIT 1;	party_people
SELECT event_name FROM party_events GROUP BY event_name HAVING count(*)  >  2;	party_people
SELECT event_name FROM party_events GROUP BY event_name HAVING count(*)  >  2;	party_people
SELECT count(*) FROM region AS t1 JOIN party AS t2 ON t1.region_id  =  t2.region_id JOIN party_events AS t3 ON t2.party_id  =  t3.party_id WHERE t1.region_name  =  "United Kingdom" AND t3.Event_Name  =  "Annaual Meeting";	party_people
SELECT count(*) FROM region AS t1 JOIN party AS t2 ON t1.region_id  =  t2.region_id JOIN party_events AS t3 ON t2.party_id  =  t3.party_id WHERE t1.region_name  =  "United Kingdom" AND t3.Event_Name  =  "Annaual Meeting";	party_people
SELECT count(*) FROM pilot;	pilot_record
SELECT Pilot_name FROM pilot ORDER BY Rank ASC;	pilot_record
SELECT POSITION ,  Team FROM pilot;	pilot_record
SELECT DISTINCT POSITION FROM pilot WHERE Age  >  30;	pilot_record
SELECT Pilot_name FROM pilot WHERE Team  =  "Bradley" OR Team  =  "Fordham";	pilot_record
SELECT Join_Year FROM pilot ORDER BY Rank ASC LIMIT 1;	pilot_record
SELECT Nationality ,  COUNT(*) FROM pilot GROUP BY Nationality;	pilot_record
SELECT Nationality FROM pilot GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;	pilot_record
SELECT POSITION FROM pilot WHERE Join_Year	 <  2000 INTERSECT SELECT POSITION FROM pilot WHERE Join_Year	 >  2005;	pilot_record
SELECT T3.Pilot_name ,  T2.Model FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID  =  T3.Pilot_ID;	pilot_record
SELECT T3.Pilot_name ,  T2.Fleet_Series FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID  =  T3.Pilot_ID ORDER BY T3.Rank;	pilot_record
SELECT T2.Fleet_Series FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID  =  T3.Pilot_ID WHERE T3.Age  <  34;	pilot_record
SELECT T2.Pilot_name ,  COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.pilot_ID  =  T2.pilot_ID GROUP BY T2.Pilot_name;	pilot_record
SELECT T2.Pilot_name ,  COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.pilot_ID  =  T2.pilot_ID GROUP BY T2.Pilot_name HAVING COUNT(*)  >  1;	pilot_record
SELECT Pilot_name FROM pilot WHERE Pilot_ID NOT IN (SELECT Pilot_ID FROM pilot_record);	pilot_record
SELECT document_status_code FROM Ref_Document_Status;	cre_Doc_Control_Systems
SELECT document_status_description FROM Ref_Document_Status WHERE document_status_code = "working";	cre_Doc_Control_Systems
SELECT document_type_code FROM Ref_Document_Types;	cre_Doc_Control_Systems
SELECT document_type_description FROM Ref_Document_Types WHERE document_type_code = "Paper";	cre_Doc_Control_Systems
SELECT shipping_agent_name FROM Ref_Shipping_Agents;	cre_Doc_Control_Systems
SELECT shipping_agent_code FROM Ref_Shipping_Agents WHERE shipping_agent_name = "UPS";	cre_Doc_Control_Systems
SELECT role_code FROM ROLES;	cre_Doc_Control_Systems
SELECT role_description FROM ROLES WHERE role_code = "ED";	cre_Doc_Control_Systems
SELECT count(*) FROM Employees;	cre_Doc_Control_Systems
SELECT T1.role_description FROM ROLES AS T1 JOIN Employees AS T2 ON T1.role_code = T2.role_code WHERE T2.employee_name = "Koby";	cre_Doc_Control_Systems
SELECT document_id ,  receipt_date FROM Documents;	cre_Doc_Control_Systems
SELECT T1.role_description ,  T2.role_code ,  count(*) FROM ROLES AS T1 JOIN Employees AS T2 ON T1.role_code = T2.role_code GROUP BY T2.role_code;	cre_Doc_Control_Systems
SELECT Roles.role_description , count(Employees.employee_id) FROM ROLES JOIN Employees ON Employees.role_code = Roles.role_code GROUP BY Employees.role_code HAVING count(Employees.employee_id)  >  1;	cre_Doc_Control_Systems
SELECT Ref_Document_Status.document_status_description FROM Ref_Document_Status JOIN Documents ON Documents.document_status_code = Ref_Document_Status.document_status_code WHERE Documents.document_id = 1;	cre_Doc_Control_Systems
SELECT count(*) FROM Documents WHERE document_status_code = "done";	cre_Doc_Control_Systems
SELECT document_type_code FROM Documents WHERE document_id = 2;	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code = "done" AND document_type_code = "Paper";	cre_Doc_Control_Systems
SELECT Ref_Shipping_Agents.shipping_agent_name FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Documents.document_id = 2;	cre_Doc_Control_Systems
SELECT count(*) FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT Ref_Shipping_Agents.shipping_agent_name , count(Documents.document_id) FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code GROUP BY Ref_Shipping_Agents.shipping_agent_code ORDER BY count(Documents.document_id) DESC LIMIT 1;	cre_Doc_Control_Systems
SELECT receipt_date FROM Documents WHERE document_id = 3;	cre_Doc_Control_Systems
SELECT Addresses.address_details FROM Addresses JOIN Documents_Mailed ON Documents_Mailed.mailed_to_address_id = Addresses.address_id WHERE document_id = 4;	cre_Doc_Control_Systems
SELECT mailing_date FROM Documents_Mailed WHERE document_id = 7;	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code  =  "done" AND document_type_code = "Paper" EXCEPT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT document_id FROM Documents WHERE document_status_code  =  "done" AND document_type_code = "Paper" INTERSECT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";	cre_Doc_Control_Systems
SELECT draft_details FROM Document_Drafts WHERE document_id = 7;	cre_Doc_Control_Systems
SELECT count(*) FROM Draft_Copies WHERE document_id = 2;	cre_Doc_Control_Systems
SELECT document_id , count(copy_number) FROM Draft_Copies GROUP BY document_id ORDER BY count(copy_number) DESC LIMIT 1;	cre_Doc_Control_Systems
SELECT document_id , count(*) FROM Draft_Copies GROUP BY document_id HAVING count(*)  >  1;	cre_Doc_Control_Systems
SELECT Employees.employee_name FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id WHERE Circulation_History.document_id = 1;	cre_Doc_Control_Systems
SELECT employee_name FROM Employees EXCEPT SELECT Employees.employee_name FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id;	cre_Doc_Control_Systems
SELECT Employees.employee_name , count(*) FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id GROUP BY Circulation_History.document_id , Circulation_History.draft_number , Circulation_History.copy_number ORDER BY count(*) DESC LIMIT 1;	cre_Doc_Control_Systems
SELECT document_id ,  count(DISTINCT employee_id) FROM Circulation_History GROUP BY document_id;	cre_Doc_Control_Systems
SELECT dname FROM department ORDER BY mgr_start_date;	company_1
SELECT Dependent_name FROM dependent WHERE relationship  =  'Spouse';	company_1
SELECT count(*) FROM dependent WHERE sex  =  'F';	company_1
SELECT t1.dname FROM department AS t1 JOIN dept_locations AS t2 ON t1.dnumber  =  t2.dnumber WHERE t2.dlocation  =  'Houston';	company_1
SELECT fname ,  lname FROM employee WHERE salary  >  30000;	company_1
SELECT count(*) ,  sex FROM employee WHERE salary  <  50000 GROUP BY sex;	company_1
SELECT fname ,  lname ,  address FROM employee ORDER BY Bdate;	company_1
SELECT T1.event_details FROM EVENTS AS T1 JOIN Services AS T2 ON T1.Service_ID  =  T2.Service_ID WHERE T2.Service_Type_Code  =  'Marriage';	local_govt_in_alabama
SELECT T1.event_id ,  T1.event_details FROM EVENTS AS T1 JOIN Participants_in_Events AS T2 ON T1.Event_ID  =  T2.Event_ID GROUP BY T1.Event_ID HAVING count(*)  >  1;	local_govt_in_alabama
SELECT T1.Participant_ID ,  T1.Participant_Type_Code ,  count(*) FROM Participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID  =  T2.Participant_ID GROUP BY T1.Participant_ID;	local_govt_in_alabama
SELECT Participant_ID ,  Participant_Type_Code ,  Participant_Details FROM  Participants;	local_govt_in_alabama
SELECT count(*) FROM participants WHERE participant_type_code  =  'Organizer';	local_govt_in_alabama
SELECT service_type_code FROM services ORDER BY service_type_code;	local_govt_in_alabama
SELECT service_id ,  event_details FROM EVENTS;	local_govt_in_alabama
SELECT count(*) FROM participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID  =  T2.Participant_ID WHERE T1.participant_details LIKE '%Dr.%';	local_govt_in_alabama
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY count(*) DESC LIMIT 1;	local_govt_in_alabama
SELECT T3.service_id ,  T4.Service_Type_Code FROM participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID  =  T2.Participant_ID JOIN EVENTS AS T3 ON T2.Event_ID   =  T3.Event_ID JOIN services AS T4 ON T3.service_id  =  T4.service_id GROUP BY T3.service_id ORDER BY count(*) ASC LIMIT 1;	local_govt_in_alabama
SELECT Event_ID FROM Participants_in_Events GROUP BY Event_ID ORDER BY count(*) DESC LIMIT 1;	local_govt_in_alabama
SELECT event_id FROM EVENTS EXCEPT SELECT T1.event_id FROM Participants_in_Events AS T1 JOIN Participants AS T2 ON T1.Participant_ID  =  T2.Participant_ID WHERE Participant_Details  =  'Kenyatta Kuhn';	local_govt_in_alabama
SELECT T1.service_type_code FROM services AS T1 JOIN EVENTS AS T2 ON T1.service_id  =  T2.service_id WHERE T2.event_details  =  'Success' INTERSECT SELECT T1.service_type_code FROM services AS T1 JOIN EVENTS AS T2 ON T1.service_id  =  T2.service_id WHERE T2.event_details  =  'Fail';	local_govt_in_alabama
SELECT count(*) FROM EVENTS WHERE event_id NOT IN (SELECT event_id FROM Participants_in_Events);	local_govt_in_alabama
SELECT count(DISTINCT participant_id) FROM participants_in_Events;	local_govt_in_alabama
SELECT name FROM races ORDER BY date DESC LIMIT 1;	formula_1
SELECT name FROM races ORDER BY date DESC LIMIT 1;	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1;	formula_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1;	formula_1
SELECT name FROM races WHERE YEAR = 2017;	formula_1
SELECT name FROM races WHERE YEAR = 2017;	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017;	formula_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017;	formula_1
SELECT DISTINCT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000;	formula_1
SELECT DISTINCT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000;	formula_1
SELECT DISTINCT T1.driverid ,  T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds >  100000;	formula_1
SELECT DISTINCT T1.driverid ,  T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds >  100000;	formula_1
SELECT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1;	formula_1
SELECT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1;	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1;	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1;	formula_1
SELECT T1.driverid ,  T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION  =  '1' GROUP BY T1.driverid HAVING count(*)  >=  2;	formula_1
SELECT T1.driverid ,  T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION  =  '1' GROUP BY T1.driverid HAVING count(*)  >=  2;	formula_1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009;	formula_1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009;	formula_1
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 );	formula_1
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 );	formula_1
SELECT T2.name ,  T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis";	formula_1
SELECT T2.name ,  T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis";	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German";	formula_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German";	formula_1
SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Chinese Grand Prix";	formula_1
SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Chinese Grand Prix";	formula_1
SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix";	formula_1
SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix";	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1;	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1;	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20;	formula_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20;	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality;	formula_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality;	formula_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid;	formula_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid;	formula_1
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017;	formula_1
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017;	formula_1
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000;	formula_1
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000;	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841);	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841);	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841);	formula_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841);	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC;	formula_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC;	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC;	formula_1
SELECT DISTINCT name FROM races ORDER BY name DESC;	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011;	formula_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011;	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00";	formula_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00";	formula_1
SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  8 UNION SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5;	formula_1
SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  8 UNION SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5;	formula_1
SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  =  11 INTERSECT SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5;	formula_1
SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  =  11 INTERSECT SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5;	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1;	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1;	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia";	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia";	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium";	formula_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium";	formula_1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points > 5;	formula_1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points > 5;	formula_1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix";	formula_1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix";	formula_1
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix";	formula_1
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix";	formula_1
SELECT max(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year;	formula_1
SELECT max(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year;	formula_1
SELECT avg(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year;	formula_1
SELECT avg(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year;	formula_1
SELECT T1.driverid ,  T1.forename ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  >=  2;	formula_1
SELECT T1.driverid ,  T1.forename ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  >=  2;	formula_1
SELECT T1.driverid ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  <=  30;	formula_1
SELECT T1.driverid ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  <=  30;	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1;	formula_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1;	formula_1
SELECT count(*) FROM technician;	machine_repair
SELECT count(*) FROM technician;	machine_repair
SELECT Name FROM technician ORDER BY Age ASC;	machine_repair
SELECT Name FROM technician ORDER BY Age ASC;	machine_repair
SELECT Team ,  Starting_Year FROM technician;	machine_repair
SELECT Team ,  Starting_Year FROM technician;	machine_repair
SELECT Name FROM technician WHERE Team != "NYY";	machine_repair
SELECT Name FROM technician WHERE Team != "NYY";	machine_repair
SELECT Name FROM technician WHERE Age  =  36 OR Age  =  37;	machine_repair
SELECT Name FROM technician WHERE Age  =  36 OR Age  =  37;	machine_repair
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1;	machine_repair
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1;	machine_repair
SELECT Team ,  COUNT(*) FROM technician GROUP BY Team;	machine_repair
SELECT Team ,  COUNT(*) FROM technician GROUP BY Team;	machine_repair
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1;	machine_repair
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1;	machine_repair
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*)  >=  2;	machine_repair
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*)  >=  2;	machine_repair
SELECT T3.Name ,  T2.Machine_series FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID;	machine_repair
SELECT T3.Name ,  T2.Machine_series FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID;	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID ORDER BY T2.quality_rank;	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID ORDER BY T2.quality_rank;	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID WHERE T2.value_points  >  70;	machine_repair
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID WHERE T2.value_points  >  70;	machine_repair
SELECT T2.Name ,  COUNT(*) FROM repair_assignment AS T1 JOIN technician AS T2 ON T1.technician_ID  =  T2.technician_ID GROUP BY T2.Name;	machine_repair
SELECT T2.Name ,  COUNT(*) FROM repair_assignment AS T1 JOIN technician AS T2 ON T1.technician_ID  =  T2.technician_ID GROUP BY T2.Name;	machine_repair
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment);	machine_repair
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assignment);	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS";	machine_repair
SELECT Starting_Year FROM technician WHERE Team  =  "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team  =  "CWS";	machine_repair
SELECT count(*) FROM entrepreneur;	entrepreneur
SELECT count(*) FROM entrepreneur;	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC;	entrepreneur
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC;	entrepreneur
SELECT Company ,  Investor FROM entrepreneur;	entrepreneur
SELECT Company ,  Investor FROM entrepreneur;	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur;	entrepreneur
SELECT avg(Money_Requested) FROM entrepreneur;	entrepreneur
SELECT Name FROM People ORDER BY Weight ASC;	entrepreneur
SELECT Name FROM People ORDER BY Weight ASC;	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID;	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID;	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor != "Rachel Elnaugh";	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor != "Rachel Elnaugh";	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1;	entrepreneur
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1;	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1;	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1;	entrepreneur
SELECT sum(T1.Money_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  1.85;	entrepreneur
SELECT sum(T1.Money_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  1.85;	entrepreneur
SELECT T2.Date_of_Birth FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor  =  "Simon Woodroffe" OR T1.Investor  =  "Peter Jones";	entrepreneur
SELECT T2.Date_of_Birth FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor  =  "Simon Woodroffe" OR T1.Investor  =  "Peter Jones";	entrepreneur
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested DESC;	entrepreneur
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested DESC;	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor;	entrepreneur
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor;	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1;	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1;	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2;	entrepreneur
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2;	entrepreneur
SELECT T2.Name ,  T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested;	entrepreneur
SELECT T2.Name ,  T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested;	entrepreneur
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur);	entrepreneur
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur);	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000;	entrepreneur
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000;	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur;	entrepreneur
SELECT count(DISTINCT Company) FROM entrepreneur;	entrepreneur
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Height DESC LIMIT 1;	entrepreneur
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Height DESC LIMIT 1;	entrepreneur
SELECT count(*) FROM perpetrator;	perpetrator
SELECT Date FROM perpetrator ORDER BY Killed DESC;	perpetrator
SELECT Injured FROM perpetrator ORDER BY Injured ASC;	perpetrator
SELECT avg(Injured) FROM perpetrator;	perpetrator
SELECT LOCATION FROM perpetrator ORDER BY Killed DESC LIMIT 1;	perpetrator
SELECT Name FROM People ORDER BY Height ASC;	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID;	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Country != "China";	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Weight DESC LIMIT 1;	perpetrator
SELECT sum(T2.Killed) FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Height  >  1.84;	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Country  =  "China" OR T2.Country  =  "Japan";	perpetrator
SELECT T1.Height FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Injured DESC;	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country;	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;	perpetrator
SELECT Country ,  COUNT(*) FROM perpetrator GROUP BY Country HAVING COUNT(*)  >=  2;	perpetrator
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Year DESC;	perpetrator
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM perpetrator);	perpetrator
SELECT Country FROM perpetrator WHERE Injured  >  50 INTERSECT SELECT Country FROM perpetrator WHERE Injured  <  20;	perpetrator
SELECT count(DISTINCT LOCATION) FROM perpetrator;	perpetrator
SELECT T2.Date FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Height DESC LIMIT 1;	perpetrator
SELECT max(YEAR) FROM perpetrator;	perpetrator
SELECT campus FROM campuses WHERE county  =  "Los Angeles";	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles";	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico";	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico";	csu_1
SELECT campus FROM campuses WHERE YEAR  =  1958;	csu_1
SELECT campus FROM campuses WHERE YEAR  =  1958;	csu_1
SELECT campus FROM campuses WHERE YEAR  <  1800;	csu_1
SELECT campus FROM campuses WHERE YEAR  <  1800;	csu_1
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939;	csu_1
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939;	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco";	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco";	csu_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND T2.year  =  1996;	csu_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND T2.year  =  1996;	csu_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND T2.year  =  1996;	csu_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND T2.year  =  1996;	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees);	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees);	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees);	csu_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees);	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950;	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950;	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1;	csu_1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1;	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1;	csu_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1;	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2003 ORDER BY T2.faculty DESC LIMIT 1;	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2003 ORDER BY T2.faculty DESC LIMIT 1;	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996;	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996;	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005;	csu_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005;	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T2.year  >=  1998 AND T2.year  <=  2002 GROUP BY T1.campus;	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T2.year  >=  1998 AND T2.year  <=  2002 GROUP BY T1.campus;	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T1.county  =  "Orange" AND T2.year  >=  2000 GROUP BY T1.campus;	csu_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T1.county  =  "Orange" AND T2.year  >=  2000 GROUP BY T1.campus;	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND faculty  >  (SELECT max(faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND T1.county  =  "Orange");	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND faculty  >  (SELECT max(faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND T1.county  =  "Orange");	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id  =  t2.campus WHERE t2.year  =  1956 AND totalenrollment_ay  >  400 AND FTE_AY  >  200;	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id  =  t2.campus WHERE t2.year  =  1956 AND totalenrollment_ay  >  400 AND FTE_AY  >  200;	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles";	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles";	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles";	csu_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles";	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND t2.year  =  2000;	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND t2.year  =  2000;	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND t2.year  =  2001;	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND t2.year  =  2001;	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002;	csu_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002;	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2002 AND T2.campus  =  "Long Beach State University";	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2002 AND T2.campus  =  "Long Beach State University";	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2004 AND T2.campus  =  "San Francisco State University";	csu_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2004 AND T2.campus  =  "San Francisco State University";	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id  =  t2.campus WHERE t2.faculty  >=  600 AND t2.faculty  <=  1000 AND T1.year  =  2004;	csu_1
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id  =  t2.campus WHERE t2.faculty  >=  600 AND t2.faculty  <=  1000 AND T1.year  =  2004;	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2002 ORDER BY t3.degrees DESC LIMIT 1;	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2002 ORDER BY t3.degrees DESC LIMIT 1;	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2001 ORDER BY t3.degrees LIMIT 1;	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2001 ORDER BY t3.degrees LIMIT 1;	csu_1
SELECT sum(t1.undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Jose State University";	csu_1
SELECT sum(t1.undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Jose State University";	csu_1
SELECT sum(t1.graduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Francisco State University";	csu_1
SELECT sum(t1.graduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Francisco State University";	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Francisco State University" AND t1.year  =  2000;	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Francisco State University" AND t1.year  =  2000;	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Jose State University" AND t1.year  =  2000;	csu_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Jose State University" AND t1.year  =  2000;	csu_1
SELECT count(*) FROM campuses;	csu_1
SELECT count(*) FROM campuses;	csu_1
SELECT count(*) FROM candidate;	candidate_poll
SELECT count(*) FROM candidate;	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1;	candidate_poll
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1;	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3;	candidate_poll
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3;	candidate_poll
SELECT Candidate_ID FROM candidate ORDER BY oppose_rate LIMIT 1;	candidate_poll
SELECT Candidate_ID FROM candidate ORDER BY oppose_rate LIMIT 1;	candidate_poll
SELECT Support_rate ,  Consider_rate ,  Oppose_rate FROM candidate ORDER BY unsure_rate;	candidate_poll
SELECT Support_rate ,  Consider_rate ,  Oppose_rate FROM candidate ORDER BY unsure_rate;	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1;	candidate_poll
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1;	candidate_poll
SELECT name FROM people ORDER BY date_of_birth;	candidate_poll
SELECT name FROM people ORDER BY date_of_birth;	candidate_poll
SELECT avg(height) ,  avg(weight) FROM people WHERE sex  =  'M';	candidate_poll
SELECT avg(height) ,  avg(weight) FROM people WHERE sex  =  'M';	candidate_poll
SELECT name FROM people WHERE height  >  200 OR height  <  190;	candidate_poll
SELECT name FROM people WHERE height  >  200 OR height  <  190;	candidate_poll
SELECT avg(weight) ,  min(weight) ,  sex FROM people GROUP BY sex;	candidate_poll
SELECT avg(weight) ,  min(weight) ,  sex FROM people GROUP BY sex;	candidate_poll
SELECT t1.name ,  t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id ORDER BY t2.support_rate DESC LIMIT 1;	candidate_poll
SELECT t1.name ,  t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id ORDER BY t2.support_rate DESC LIMIT 1;	candidate_poll
SELECT t1.name ,  t1.sex ,  min(oppose_rate) FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex;	candidate_poll
SELECT t1.name ,  t1.sex ,  min(oppose_rate) FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex;	candidate_poll
SELECT t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex ORDER BY avg(t2.unsure_rate) DESC LIMIT 1;	candidate_poll
SELECT t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id GROUP BY t1.sex ORDER BY avg(t2.unsure_rate) DESC LIMIT 1;	candidate_poll
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidate);	candidate_poll
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidate);	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t2.support_rate  <  t2.oppose_rate;	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t2.support_rate  <  t2.oppose_rate;	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex;	candidate_poll
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex;	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate;	candidate_poll
SELECT max(support_rate) ,  min(consider_rate) ,  min(oppose_rate) FROM candidate;	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t1.sex  =  'F' ORDER BY t1.name;	candidate_poll
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id  =  t2.people_id WHERE t1.sex  =  'F' ORDER BY t1.name;	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people);	candidate_poll
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people);	candidate_poll
SELECT * FROM people;	candidate_poll
SELECT * FROM people;	candidate_poll
SELECT title FROM Movie WHERE director = 'Steven Spielberg';	movie_1
SELECT title FROM Movie WHERE director = 'Steven Spielberg';	movie_1
SELECT title FROM Movie WHERE director = 'James Cameron' AND YEAR  >  2000;	movie_1
SELECT title FROM Movie WHERE director = 'James Cameron' AND YEAR  >  2000;	movie_1
SELECT count(*) FROM Movie WHERE YEAR  <  2000;	movie_1
SELECT count(*) FROM Movie WHERE YEAR  <  2000;	movie_1
SELECT director FROM Movie WHERE title  = 'Avatar';	movie_1
SELECT director FROM Movie WHERE title  = 'Avatar';	movie_1
SELECT count(*) FROM Reviewer;	movie_1
SELECT count(*) FROM Reviewer;	movie_1
SELECT rID FROM Reviewer WHERE name LIKE "%Mike%";	movie_1
SELECT rID FROM Reviewer WHERE name LIKE "%Mike%";	movie_1
SELECT rID FROM Reviewer WHERE name  =  "Daniel Lewis";	movie_1
SELECT rID FROM Reviewer WHERE name  =  "Daniel Lewis";	movie_1
SELECT count(*) FROM Rating WHERE stars  >  3;	movie_1
SELECT count(*) FROM Rating WHERE stars  >  3;	movie_1
SELECT max(stars) ,  min(stars) FROM Rating;	movie_1
SELECT max(stars) ,  min(stars) FROM Rating;	movie_1
SELECT DISTINCT YEAR FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  >=  4 ORDER BY T1.year;	movie_1
SELECT DISTINCT YEAR FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  >=  4 ORDER BY T1.year;	movie_1
SELECT T1.director ,  T1.title FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  =  5;	movie_1
SELECT T1.director ,  T1.title FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID WHERE T2.stars  =  5;	movie_1
SELECT T2.name ,  avg(T1.stars) FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T2.name;	movie_1
SELECT T2.name ,  avg(T1.stars) FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T2.name;	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating);	movie_1
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rating);	movie_1
SELECT DISTINCT name FROM Reviewer AS T1 JOIN Rating AS T2 ON T1.rID  =  T2.rID WHERE ratingDate  =  "null";	movie_1
SELECT DISTINCT name FROM Reviewer AS T1 JOIN Rating AS T2 ON T1.rID  =  T2.rID WHERE ratingDate  =  "null";	movie_1
SELECT avg(T1.stars) ,  T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT min(YEAR) FROM Movie);	movie_1
SELECT avg(T1.stars) ,  T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT min(YEAR) FROM Movie);	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie);	movie_1
SELECT title FROM Movie WHERE YEAR  =  (SELECT max(YEAR) FROM Movie);	movie_1
SELECT max(T1.stars) ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT max(YEAR) FROM Movie);	movie_1
SELECT max(T1.stars) ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.year  =  (SELECT max(YEAR) FROM Movie);	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg");	movie_1
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg");	movie_1
SELECT T2.title ,  T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  >  (SELECT avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.director  =  "James Cameron");	movie_1
SELECT T2.title ,  T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  >  (SELECT avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T2.director  =  "James Cameron");	movie_1
SELECT T3.name ,  T2.title ,  T1.stars ,  T1.ratingDate FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID ORDER BY T3.name ,  T2.title ,  T1.stars;	movie_1
SELECT T3.name ,  T2.title ,  T1.stars ,  T1.ratingDate FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID ORDER BY T3.name ,  T2.title ,  T1.stars;	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T1.rID HAVING COUNT(*)  >=  3;	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID GROUP BY T1.rID HAVING COUNT(*)  >=  3;	movie_1
SELECT DISTINCT T3.name FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.title  =  'Gone with the Wind';	movie_1
SELECT DISTINCT T3.name FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.title  =  'Gone with the Wind';	movie_1
SELECT DISTINCT T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Sarah Martinez';	movie_1
SELECT DISTINCT T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Sarah Martinez';	movie_1
SELECT DISTINCT T3.name ,  T2.title ,  T1.stars FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.director  =  T3.name;	movie_1
SELECT DISTINCT T3.name ,  T2.title ,  T1.stars FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.director  =  T3.name;	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie;	movie_1
SELECT name FROM Reviewer UNION SELECT title FROM Movie;	movie_1
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Chris Jackson';	movie_1
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Chris Jackson';	movie_1
SELECT T1.title ,  T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title ORDER BY T1.director ,  T1.title;	movie_1
SELECT T1.title ,  T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title ORDER BY T1.director ,  T1.title;	movie_1
SELECT T1.title ,  T1.year FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title;	movie_1
SELECT T1.title ,  T1.year FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title;	movie_1
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1;	movie_1
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1;	movie_1
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*)  =  1;	movie_1
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*)  =  1;	movie_1
SELECT count(*) ,  T1.director FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID GROUP BY T1.director;	movie_1
SELECT count(*) ,  T1.director FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID GROUP BY T1.director;	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) DESC LIMIT 1;	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) DESC LIMIT 1;	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) LIMIT 1;	movie_1
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) LIMIT 1;	movie_1
SELECT T2.title ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID ORDER BY T1.stars DESC LIMIT 3;	movie_1
SELECT T2.title ,  T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID ORDER BY T1.stars DESC LIMIT 3;	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  max(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE director != "null" GROUP BY director;	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  max(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE director != "null" GROUP BY director;	movie_1
SELECT T2.title ,  T1.rID ,  T1.stars ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.rID;	movie_1
SELECT T2.title ,  T1.rID ,  T1.stars ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.rID;	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T2.director;	movie_1
SELECT T2.title ,  T1.stars ,  T2.director ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T2.director;	movie_1
SELECT T2.title ,  T1.mID FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1;	movie_1
SELECT T2.title ,  T1.mID FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1;	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars BETWEEN 3 AND 5;	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars BETWEEN 3 AND 5;	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  >  3;	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  >  3;	movie_1
SELECT mID ,  avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris") GROUP BY mID;	movie_1
SELECT mID ,  avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris") GROUP BY mID;	movie_1
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris";	movie_1
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T2.name  =  "Brittany Harris";	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2;	movie_1
SELECT mID ,  avg(stars) FROM Rating GROUP BY mID HAVING count(*)  >=  2;	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4;	movie_1
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4;	movie_1
SELECT rID FROM Rating WHERE stars != 4;	movie_1
SELECT rID FROM Rating WHERE stars != 4;	movie_1
SELECT DISTINCT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Brittany Harris' OR T2.year  >  2000;	movie_1
SELECT DISTINCT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Brittany Harris' OR T2.year  >  2000;	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980;	movie_1
SELECT title FROM Movie WHERE director  =  "James Cameron" OR YEAR   <  1980;	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  3 INTERSECT SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  4;	movie_1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  3 INTERSECT SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID  =  T2.rID WHERE T1.stars  =  4;	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  3 INTERSECT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  4;	movie_1
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  3 INTERSECT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  4;	movie_1
SELECT count(*) FROM county_public_safety;	county_public_safety
SELECT count(*) FROM county_public_safety;	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC;	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC;	county_public_safety
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East";	county_public_safety
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East";	county_public_safety
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety;	county_public_safety
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety;	county_public_safety
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC;	county_public_safety
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC;	county_public_safety
SELECT Name FROM city ORDER BY Name ASC;	county_public_safety
SELECT Name FROM city ORDER BY Name ASC;	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10;	county_public_safety
SELECT Hispanic FROM city WHERE Black  >  10;	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1;	county_public_safety
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1;	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5;	county_public_safety
SELECT Name FROM city ORDER BY White DESC LIMIT 5;	county_public_safety
SELECT T1.Name ,  T2.Name FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID;	county_public_safety
SELECT T1.Name ,  T2.Name FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID;	county_public_safety
SELECT T1.White ,  T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID;	county_public_safety
SELECT T1.White ,  T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID;	county_public_safety
SELECT name FROM city WHERE county_ID  =  (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1);	county_public_safety
SELECT name FROM city WHERE county_ID  =  (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1);	county_public_safety
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population  >  20000);	county_public_safety
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population  >  20000);	county_public_safety
SELECT T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID WHERE T1.White  >  90;	county_public_safety
SELECT T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID WHERE T1.White  >  90;	county_public_safety
SELECT Police_force ,  COUNT(*) FROM county_public_safety GROUP BY Police_force;	county_public_safety
SELECT Police_force ,  COUNT(*) FROM county_public_safety GROUP BY Police_force;	county_public_safety
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1;	county_public_safety
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1;	county_public_safety
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city);	county_public_safety
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city);	county_public_safety
SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "East" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "West";	county_public_safety
SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "East" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION  =  "West";	county_public_safety
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate  <  100);	county_public_safety
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate  <  100);	county_public_safety
SELECT Case_burden FROM county_public_safety ORDER BY Population DESC;	county_public_safety
SELECT Case_burden FROM county_public_safety ORDER BY Population DESC;	county_public_safety
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName FROM Rooms WHERE basePrice  <  160 AND beds =  2 AND decor  =  'modern';	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT roomName ,  RoomId FROM Rooms WHERE basePrice  >  160 AND maxOccupancy  >  2;	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY count(*) DESC LIMIT 1;	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY count(*) DESC LIMIT 1;	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName  =  "SWEAZY";	inn_1
SELECT T2.roomName ,  T1.Rate ,  T1.CheckIn ,  T1.CheckOut FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY T1.Rate DESC LIMIT 1;	inn_1
SELECT T2.roomName ,  T1.Rate ,  T1.CheckIn ,  T1.CheckOut FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY T1.Rate DESC LIMIT 1;	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG";	inn_1
SELECT Adults FROM Reservations WHERE CheckIn  =  "2010-10-23" AND FirstName  =  "CONRAD" AND LastName  =  "SELBIG";	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL";	inn_1
SELECT Kids FROM Reservations WHERE CheckIn  =  "2010-09-21" AND FirstName  =  "DAMIEN" AND LastName  =  "TRACHSEL";	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King';	inn_1
SELECT sum(beds) FROM Rooms WHERE bedtype  =  'King';	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice;	inn_1
SELECT roomName ,  decor FROM Rooms WHERE bedtype  =  'King' ORDER BY basePrice;	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;	inn_1
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance";	inn_1
SELECT decor FROM Rooms WHERE roomName  =  "Recluse and defiance";	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern';	inn_1
SELECT sum(maxOccupancy) FROM Rooms WHERE decor  =  'modern';	inn_1
SELECT T2.decor FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T2.decor ORDER BY count(T2.decor) ASC LIMIT 1;	inn_1
SELECT T2.decor FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T2.decor ORDER BY count(T2.decor) ASC LIMIT 1;	inn_1
SELECT count(*) FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T2.maxOccupancy  =  T1.Adults + T1.Kids;	inn_1
SELECT count(*) FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T2.maxOccupancy  =  T1.Adults + T1.Kids;	inn_1
SELECT T1.firstname ,  T1.lastname FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T1.Rate - T2.basePrice  >  0;	inn_1
SELECT T1.firstname ,  T1.lastname FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE T1.Rate - T2.basePrice  >  0;	inn_1
SELECT count(*) FROM Rooms;	inn_1
SELECT count(*) FROM Rooms;	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King";	inn_1
SELECT count(*) FROM Rooms WHERE bedType  =  "King";	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  count(*) FROM Rooms GROUP BY bedType;	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;	inn_1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional";	inn_1
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional";	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor;	inn_1
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor;	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor;	inn_1
SELECT decor , avg(basePrice) ,  min(basePrice) FROM Rooms GROUP BY decor;	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice;	inn_1
SELECT roomName FROM Rooms ORDER BY basePrice;	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor;	inn_1
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT bedType ,  avg(basePrice) FROM Rooms GROUP BY bedType;	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen";	inn_1
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen";	inn_1
SELECT count(DISTINCT bedType) FROM Rooms;	inn_1
SELECT count(DISTINCT bedType) FROM Rooms;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;	inn_1
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms );	inn_1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms );	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations);	inn_1
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations);	inn_1
SELECT T2.roomName ,  count(*) ,  T1.Room FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room;	inn_1
SELECT T2.roomName ,  count(*) ,  T1.Room FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room;	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room HAVING count(*)  >  60;	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room HAVING count(*)  >  60;	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150;	inn_1
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150;	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE firstname LIKE '%ROY%';	inn_1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE firstname LIKE '%ROY%';	inn_1
SELECT T1.cmi_details FROM Customer_Master_Index AS T1 JOIN CMI_Cross_References AS T2 ON T1.master_customer_id  =  T2.master_customer_id WHERE T2.source_system_code  =  'Tax';	local_govt_mdm
SELECT T1.cmi_cross_ref_id ,  T1.source_system_code FROM CMI_Cross_References AS T1 JOIN Council_Tax AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id GROUP BY T1.cmi_cross_ref_id HAVING count(*)  >=  1;	local_govt_mdm
SELECT T2.cmi_cross_ref_id ,  T2.master_customer_id ,  count(*) FROM Business_Rates AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id GROUP BY T2.cmi_cross_ref_id;	local_govt_mdm
SELECT T1.source_system_code ,  T2.council_tax_id FROM CMI_Cross_References AS T1 JOIN Benefits_Overpayments AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id ORDER BY T2.council_tax_id;	local_govt_mdm
SELECT T1.source_system_code ,  T1.master_customer_id ,  T2.council_tax_id FROM CMI_Cross_References AS T1 JOIN Parking_Fines AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id;	local_govt_mdm
SELECT T1.council_tax_id FROM Rent_Arrears AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id JOIN Customer_Master_Index AS T3 ON T3.master_customer_id  =  T2.master_customer_id WHERE T3.cmi_details != 'Schmidt ,  Kertzmann and Lubowitz';	local_govt_mdm
SELECT T1.electoral_register_id FROM Electoral_Register AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id WHERE T2.source_system_code  =  'Electoral' OR T2.source_system_code  =  'Tax';	local_govt_mdm
SELECT count(DISTINCT source_system_code) FROM CMI_cross_references;	local_govt_mdm
SELECT * FROM customer_master_index ORDER BY cmi_details DESC;	local_govt_mdm
SELECT council_tax_id ,  cmi_cross_ref_id FROM parking_fines;	local_govt_mdm
SELECT count(*) FROM rent_arrears;	local_govt_mdm
SELECT DISTINCT T2.source_system_code FROM customer_master_index AS T1 JOIN cmi_cross_references AS T2 ON T1.master_customer_id  =  T2.master_customer_id WHERE T1.cmi_details  =  'Gottlieb ,  Becker and Wyman';	local_govt_mdm
SELECT cmi_cross_ref_id FROM cmi_cross_references EXCEPT SELECT cmi_cross_ref_id FROM parking_fines;	local_govt_mdm
SELECT DISTINCT source_system_code FROM cmi_cross_references WHERE source_system_code LIKE '%en%';	local_govt_mdm
SELECT count(*) FROM party;	party_host
SELECT count(*) FROM party;	party_host
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC;	party_host
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC;	party_host
SELECT Party_Theme ,  LOCATION FROM party;	party_host
SELECT Party_Theme ,  LOCATION FROM party;	party_host
SELECT First_year ,  Last_year FROM party WHERE Party_Theme  =  "Spring" OR Party_Theme  =  "Teqnology";	party_host
SELECT First_year ,  Last_year FROM party WHERE Party_Theme  =  "Spring" OR Party_Theme  =  "Teqnology";	party_host
SELECT avg(Number_of_hosts) FROM party;	party_host
SELECT avg(Number_of_hosts) FROM party;	party_host
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1;	party_host
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1;	party_host
SELECT Nationality ,  COUNT(*) FROM HOST GROUP BY Nationality;	party_host
SELECT Nationality ,  COUNT(*) FROM HOST GROUP BY Nationality;	party_host
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;	party_host
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;	party_host
SELECT Nationality FROM HOST WHERE Age  >  45 INTERSECT SELECT Nationality FROM HOST WHERE Age  <  35;	party_host
SELECT Nationality FROM HOST WHERE Age  >  45 INTERSECT SELECT Nationality FROM HOST WHERE Age  <  35;	party_host
SELECT T3.Party_Theme ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID;	party_host
SELECT T3.Party_Theme ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID;	party_host
SELECT T3.Location ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID ORDER BY T2.Age;	party_host
SELECT T3.Location ,  T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID ORDER BY T2.Age;	party_host
SELECT T3.Location FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T2.Age  >  50;	party_host
SELECT T3.Location FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T2.Age  >  50;	party_host
SELECT T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T3.Number_of_hosts  >  20;	party_host
SELECT T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID  =  T2.Host_ID JOIN party AS T3 ON T1.Party_ID  =  T3.Party_ID WHERE T3.Number_of_hosts  >  20;	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1;	party_host
SELECT Name ,  Nationality FROM HOST ORDER BY Age DESC LIMIT 1;	party_host
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host);	party_host
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_host);	party_host
SELECT count(*) FROM region;	storm_record
SELECT count(*) FROM region;	storm_record
SELECT region_code ,  region_name FROM region ORDER BY region_code;	storm_record
SELECT region_code ,  region_name FROM region ORDER BY region_code;	storm_record
SELECT region_name FROM region ORDER BY region_name;	storm_record
SELECT region_name FROM region ORDER BY region_name;	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark';	storm_record
SELECT region_name FROM region WHERE region_name != 'Denmark';	storm_record
SELECT count(*) FROM storm WHERE Number_Deaths  >  0;	storm_record
SELECT count(*) FROM storm WHERE Number_Deaths  >  0;	storm_record
SELECT name ,  dates_active ,  number_deaths FROM storm WHERE number_deaths  >=  1;	storm_record
SELECT name ,  dates_active ,  number_deaths FROM storm WHERE number_deaths  >=  1;	storm_record
SELECT avg(damage_millions_USD) ,  max(damage_millions_USD) FROM storm WHERE max_speed  >  1000;	storm_record
SELECT avg(damage_millions_USD) ,  max(damage_millions_USD) FROM storm WHERE max_speed  >  1000;	storm_record
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm);	storm_record
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm);	storm_record
SELECT name ,  damage_millions_USD FROM storm ORDER BY max_speed DESC;	storm_record
SELECT name ,  damage_millions_USD FROM storm ORDER BY max_speed DESC;	storm_record
SELECT count(DISTINCT region_id) FROM affected_region;	storm_record
SELECT count(DISTINCT region_id) FROM affected_region;	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region);	storm_record
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region);	storm_record
SELECT T1.region_name ,  count(*) FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id;	storm_record
SELECT T1.region_name ,  count(*) FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id;	storm_record
SELECT T1.name ,  count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id;	storm_record
SELECT T1.name ,  count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id;	storm_record
SELECT T1.name ,  T1.max_speed FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id ORDER BY count(*) DESC LIMIT 1;	storm_record
SELECT T1.name ,  T1.max_speed FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id ORDER BY count(*) DESC LIMIT 1;	storm_record
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region);	storm_record
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region);	storm_record
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.number_city_affected)  >=  10;	storm_record
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.number_city_affected)  >=  10;	storm_record
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2;	storm_record
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2;	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T3.number_deaths  >=  10;	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T3.number_deaths  >=  10;	storm_record
SELECT T3.name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.region_name  =  'Denmark';	storm_record
SELECT T3.name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.region_name  =  'Denmark';	storm_record
SELECT T1.region_name FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*)  >=  2;	storm_record
SELECT T1.region_name FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*)  >=  2;	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id ORDER BY T3.Number_Deaths DESC LIMIT 1;	storm_record
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id ORDER BY T3.Number_Deaths DESC LIMIT 1;	storm_record
SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Afghanistan' INTERSECT SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Albania';	storm_record
SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Afghanistan' INTERSECT SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Albania';	storm_record
SELECT count(*) FROM county;	election
SELECT count(*) FROM county;	election
SELECT County_name ,  Population FROM county;	election
SELECT County_name ,  Population FROM county;	election
SELECT avg(Population) FROM county;	election
SELECT avg(Population) FROM county;	election
SELECT max(Population) ,  min(Population) FROM county;	election
SELECT max(Population) ,  min(Population) FROM county;	election
SELECT DISTINCT District FROM election;	election
SELECT DISTINCT District FROM election;	election
SELECT Zip_code FROM county WHERE County_name  =  "Howard";	election
SELECT Zip_code FROM county WHERE County_name  =  "Howard";	election
SELECT Delegate FROM election WHERE District  =  1;	election
SELECT Delegate FROM election WHERE District  =  1;	election
SELECT Delegate ,  Committee FROM election;	election
SELECT Delegate ,  Committee FROM election;	election
SELECT count(DISTINCT Governor) FROM party;	election
SELECT count(DISTINCT Governor) FROM party;	election
SELECT Lieutenant_Governor ,  Comptroller FROM party WHERE Party  =  "Democratic";	election
SELECT Lieutenant_Governor ,  Comptroller FROM party WHERE Party  =  "Democratic";	election
SELECT DISTINCT YEAR FROM party WHERE Governor  =  "Eliot Spitzer";	election
SELECT DISTINCT YEAR FROM party WHERE Governor  =  "Eliot Spitzer";	election
SELECT * FROM election;	election
SELECT * FROM election;	election
SELECT T2.Delegate ,  T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District;	election
SELECT T2.Delegate ,  T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District;	election
SELECT T2.Delegate FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  <  100000;	election
SELECT T2.Delegate FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  <  100000;	election
SELECT count(DISTINCT T2.Delegate) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  >  50000;	election
SELECT count(DISTINCT T2.Delegate) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  >  50000;	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T2.Committee  =  "Appropriations";	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T2.Committee  =  "Appropriations";	election
SELECT T1.Delegate ,  T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID;	election
SELECT T1.Delegate ,  T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID;	election
SELECT T2.Governor FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1;	election
SELECT T2.Governor FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1;	election
SELECT T2.Comptroller FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1 OR T1.District  =  2;	election
SELECT T2.Comptroller FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.District  =  1 OR T1.District  =  2;	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic";	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic";	election
SELECT T1.County_name ,  COUNT(*) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id;	election
SELECT T1.County_name ,  COUNT(*) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id;	election
SELECT T2.Party ,  COUNT(*) FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party;	election
SELECT T2.Party ,  COUNT(*) FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party;	election
SELECT County_name FROM county ORDER BY Population ASC;	election
SELECT County_name FROM county ORDER BY Population ASC;	election
SELECT County_name FROM county ORDER BY County_name DESC;	election
SELECT County_name FROM county ORDER BY County_name DESC;	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1;	election
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1;	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3;	election
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3;	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id HAVING COUNT(*)  >=  2;	election
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id HAVING COUNT(*)  >=  2;	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2;	election
SELECT Party FROM party GROUP BY Party HAVING COUNT(*)  >=  2;	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party ORDER BY COUNT(*) DESC LIMIT 1;	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party ORDER BY COUNT(*) DESC LIMIT 1;	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1;	election
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1;	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1;	election
SELECT Comptroller ,  COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1;	election
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election);	election
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election);	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Appropriations" INTERSECT SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Economic Matters";	election
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Appropriations" INTERSECT SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T1.Committee  =  "Economic Matters";	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic" INTERSECT SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Liberal";	election
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Democratic" INTERSECT SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID WHERE T2.Party  =  "Liberal";	election
SELECT count(*) FROM journalist;	news_report
SELECT Name FROM journalist ORDER BY Years_working ASC;	news_report
SELECT Nationality ,  Age FROM journalist;	news_report
SELECT Name FROM journalist WHERE Nationality  =  "England" OR Nationality  =  "Wales";	news_report
SELECT avg(Years_working) FROM journalist;	news_report
SELECT Nationality FROM journalist ORDER BY Years_working DESC LIMIT 1;	news_report
SELECT Nationality ,  COUNT(*) FROM journalist GROUP BY Nationality;	news_report
SELECT Nationality FROM journalist GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;	news_report
SELECT Nationality FROM journalist WHERE Years_working  >  10 INTERSECT SELECT Nationality FROM journalist WHERE Years_working  <  3;	news_report
SELECT Date ,  Name ,  venue FROM event ORDER BY Event_Attendance DESC;	news_report
SELECT T3.Name ,  T2.Date FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID;	news_report
SELECT T3.Name ,  T2.Name FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID ORDER BY T2.Event_Attendance ASC;	news_report
SELECT T3.Name ,  COUNT(*) FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID GROUP BY T3.Name;	news_report
SELECT T3.Name FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID GROUP BY T3.Name HAVING COUNT(*)  >  1;	news_report
SELECT Name FROM journalist WHERE journalist_ID NOT IN (SELECT journalist_ID FROM news_report);	news_report
SELECT avg(Event_Attendance) ,  max(Event_Attendance) FROM event;	news_report
SELECT avg(t1.age) ,  avg(Years_working) ,  t2.work_type FROM journalist AS t1 JOIN news_report AS t2 ON t1.journalist_id  =  t2.journalist_id GROUP BY t2.work_type;	news_report
SELECT venue ,  name FROM event ORDER BY Event_Attendance DESC LIMIT 2;	news_report
SELECT ResName FROM Restaurant;	restaurant_1
SELECT Address FROM Restaurant WHERE ResName = "Subway";	restaurant_1
SELECT Rating FROM Restaurant WHERE ResName = "Subway";	restaurant_1
SELECT ResTypeName FROM Restaurant_Type;	restaurant_1
SELECT ResTypeDescription FROM Restaurant_Type WHERE ResTypeName = "Sandwich";	restaurant_1
SELECT ResName , Rating FROM Restaurant ORDER BY Rating DESC LIMIT 1;	restaurant_1
SELECT Age FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT Sex FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT Fname , Lname FROM Student WHERE Major  =  600;	restaurant_1
SELECT city_code FROM Student WHERE Fname = "Linda" AND Lname = "Smith";	restaurant_1
SELECT count(*) FROM Student WHERE Advisor =  1121;	restaurant_1
SELECT Advisor ,  count(*) FROM Student GROUP BY Advisor ORDER BY count(Advisor) DESC LIMIT 1;	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major ORDER BY count(Major) ASC LIMIT 1;	restaurant_1
SELECT Major ,  count(*) FROM Student GROUP BY Major HAVING count(Major) BETWEEN 2 AND 30;	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major = 600;	restaurant_1
SELECT Fname , Lname FROM Student WHERE Age  >  18 AND Major != 600 AND Sex = 'F';	restaurant_1
SELECT count(*) FROM Restaurant JOIN Type_Of_Restaurant ON Restaurant.ResID =  Type_Of_Restaurant.ResID JOIN Restaurant_Type ON Type_Of_Restaurant.ResTypeID = Restaurant_Type.ResTypeID GROUP BY Type_Of_Restaurant.ResTypeID HAVING Restaurant_Type.ResTypeName = 'Sandwich';	restaurant_1
SELECT sum(Spent) FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID WHERE Student.Fname = "Linda" AND Student.Lname = "Smith";	restaurant_1
SELECT count(*) FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID WHERE Student.Fname = "Linda" AND Student.Lname = "Smith" AND Restaurant.ResName = "Subway";	restaurant_1
SELECT TIME FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID WHERE Student.Fname = "Linda" AND Student.Lname = "Smith" AND Restaurant.ResName = "Subway";	restaurant_1
SELECT Restaurant.ResName ,  sum(Visits_Restaurant.Spent) FROM Visits_Restaurant JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID GROUP BY Restaurant.ResID ORDER BY sum(Visits_Restaurant.Spent) ASC LIMIT 1;	restaurant_1
SELECT Student.Fname , Student.Lname FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID GROUP BY Student.StuID ORDER BY count(*) DESC LIMIT 1;	restaurant_1
SELECT actual_order_id FROM actual_orders WHERE order_status_code  =  'Success';	customer_deliveries
SELECT t1.product_name ,   t1.product_price FROM products AS t1 JOIN regular_order_products AS t2 ON t1.product_id  =  t2.product_id GROUP BY t2.product_id ORDER BY count(*) DESC LIMIT 1;	customer_deliveries
SELECT count(*) FROM customers;	customer_deliveries
SELECT count(DISTINCT payment_method) FROM customers;	customer_deliveries
SELECT truck_details FROM trucks ORDER BY truck_licence_number;	customer_deliveries
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1;	customer_deliveries
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id WHERE t3.state_province_county  =  'California';	customer_deliveries
SELECT customer_email ,  customer_name FROM customers WHERE payment_method  =  'Visa';	customer_deliveries
SELECT t1.customer_name ,  t1.customer_phone FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id WHERE t3.state_province_county  =  'California';	customer_deliveries
SELECT state_province_county FROM addresses WHERE address_id NOT IN (SELECT employee_address_id FROM Employees);	customer_deliveries
SELECT customer_name ,  customer_phone ,  customer_email FROM Customers ORDER BY date_became_customer;	customer_deliveries
SELECT customer_name FROM Customers ORDER BY date_became_customer LIMIT 5;	customer_deliveries
SELECT payment_method FROM Customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1;	customer_deliveries
SELECT route_name FROM Delivery_Routes ORDER BY route_name;	customer_deliveries
SELECT t1.route_name FROM Delivery_Routes AS t1 JOIN Delivery_Route_Locations AS t2 ON t1.route_id  =  t2.route_id GROUP BY t1.route_id ORDER BY count(*) DESC LIMIT 1;	customer_deliveries
SELECT t2.state_province_county ,  count(*) FROM customer_addresses AS t1 JOIN addresses AS t2 ON t1.address_id  =  t2.address_id GROUP BY t2.state_province_county;	customer_deliveries
SELECT count(*) FROM authors;	icfp_1
SELECT count(*) FROM authors;	icfp_1
SELECT count(*) FROM inst;	icfp_1
SELECT count(*) FROM inst;	icfp_1
SELECT count(*) FROM papers;	icfp_1
SELECT count(*) FROM papers;	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Jeremy" AND t1.lname  =  "Gibbons";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Jeremy" AND t1.lname  =  "Gibbons";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Aaron" AND t1.lname  =  "Turon";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Aaron" AND t1.lname  =  "Turon";	icfp_1
SELECT count(*) FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Atsushi" AND t1.lname  =  "Ohori";	icfp_1
SELECT count(*) FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Atsushi" AND t1.lname  =  "Ohori";	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Matthias" AND t1.lname  =  "Blume";	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Matthias" AND t1.lname  =  "Blume";	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Katsuhiro" AND t1.lname  =  "Ueno";	icfp_1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Katsuhiro" AND t1.lname  =  "Ueno";	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Oxford";	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Oxford";	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google";	icfp_1
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google";	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Binders Unbound";	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Binders Unbound";	icfp_1
SELECT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Nameless ,  Painless";	icfp_1
SELECT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Nameless ,  Painless";	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Indiana University";	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Indiana University";	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google";	icfp_1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Google";	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Tokohu University";	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Tokohu University";	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Pennsylvania";	icfp_1
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Pennsylvania";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Olin" AND t1.lname  =  "Shivers";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Olin" AND t1.lname  =  "Shivers";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Stephanie" AND t1.lname  =  "Weirich";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t1.fname  =  "Stephanie" AND t1.lname  =  "Weirich";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "USA" AND t2.authorder  =  2 AND t1.lname  =  "Turon";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "USA" AND t2.authorder  =  2 AND t1.lname  =  "Turon";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "Japan" AND t2.authorder  =  1 AND t1.lname  =  "Ohori";	icfp_1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "Japan" AND t2.authorder  =  1 AND t1.lname  =  "Ohori";	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.fname ,  t1.lname ORDER BY count(*) DESC LIMIT 1;	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.fname ,  t1.lname ORDER BY count(*) DESC LIMIT 1;	icfp_1
SELECT t1.country FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1;	icfp_1
SELECT t1.country FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1;	icfp_1
SELECT t1.name FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1;	icfp_1
SELECT t1.name FROM inst AS t1 JOIN authorship AS t2 ON t1.instid  =  t2.instid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1;	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%";	icfp_1
SELECT title FROM papers WHERE title LIKE "%ML%";	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%";	icfp_1
SELECT title FROM papers WHERE title LIKE "%Database%";	icfp_1
SELECT t1.fname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Functional%";	icfp_1
SELECT t1.fname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Functional%";	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Monadic%";	icfp_1
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title LIKE "%Monadic%";	icfp_1
SELECT t2.title FROM authorship AS t1 JOIN papers AS t2 ON t1.paperid  =  t2.paperid WHERE t1.authorder  =  (SELECT max(authorder) FROM authorship);	icfp_1
SELECT t2.title FROM authorship AS t1 JOIN papers AS t2 ON t1.paperid  =  t2.paperid WHERE t1.authorder  =  (SELECT max(authorder) FROM authorship);	icfp_1
SELECT fname FROM authors WHERE lname  =  "Ueno";	icfp_1
SELECT fname FROM authors WHERE lname  =  "Ueno";	icfp_1
SELECT lname FROM authors WHERE fname  =  "Amal";	icfp_1
SELECT lname FROM authors WHERE fname  =  "Amal";	icfp_1
SELECT fname FROM authors ORDER BY fname;	icfp_1
SELECT fname FROM authors ORDER BY fname;	icfp_1
SELECT lname FROM authors ORDER BY lname;	icfp_1
SELECT lname FROM authors ORDER BY lname;	icfp_1
SELECT fname ,  lname FROM authors ORDER BY lname;	icfp_1
SELECT fname ,  lname FROM authors ORDER BY lname;	icfp_1
SELECT count(DISTINCT last_name) FROM actor;	sakila_1
SELECT count(DISTINCT last_name) FROM actor;	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2;	sakila_1
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2;	sakila_1
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway';	sakila_1
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway';	sakila_1
SELECT T2.city ,  count(*) ,  T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id  =  T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T2.city ,  count(*) ,  T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id  =  T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT count(*) FROM address WHERE district  =  'California';	sakila_1
SELECT count(*) FROM address WHERE district  =  'California';	sakila_1
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3;	sakila_1
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3;	sakila_1
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id WHERE T2.country  =  'Australia';	sakila_1
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id WHERE T2.country  =  'Australia';	sakila_1
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id GROUP BY T2.country_id HAVING count(*)  >=  3;	sakila_1
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id GROUP BY T2.country_id HAVING count(*)  >=  3;	sakila_1
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa';	sakila_1
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa';	sakila_1
SELECT count(*) FROM customer WHERE active = '1';	sakila_1
SELECT count(*) FROM customer WHERE active = '1';	sakila_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1;	sakila_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1;	sakila_1
SELECT T2.title ,  T2.film_id ,  T2.description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T2.title ,  T2.film_id ,  T2.description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T2.first_name ,  T2.last_name ,  T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T2.first_name ,  T2.last_name ,  T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T2.first_name ,  T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id HAVING count(*)  >  30;	sakila_1
SELECT T2.first_name ,  T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id HAVING count(*)  >  30;	sakila_1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT sum(amount) FROM payment;	sakila_1
SELECT sum(amount) FROM payment;	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1;	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1;	sakila_1
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id  =  T2.category_id JOIN film AS T3 ON T2.film_id  =  T3.film_id WHERE T3.title  =  'HUNGER ROOF';	sakila_1
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id  =  T2.category_id JOIN film AS T3 ON T2.film_id  =  T3.film_id WHERE T3.title  =  'HUNGER ROOF';	sakila_1
SELECT T2.name ,  T1.category_id ,  count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id  =  T2.category_id GROUP BY T1.category_id;	sakila_1
SELECT T2.name ,  T1.category_id ,  count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id  =  T2.category_id GROUP BY T1.category_id;	sakila_1
SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T1.title ,  T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id JOIN rental AS T3 ON T2.inventory_id  =  T3.inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT T1.title ,  T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id JOIN rental AS T3 ON T2.inventory_id  =  T3.inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT count(DISTINCT language_id) FROM film;	sakila_1
SELECT count(DISTINCT language_id) FROM film;	sakila_1
SELECT title FROM film WHERE rating  =  'R';	sakila_1
SELECT title FROM film WHERE rating  =  'R';	sakila_1
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE store_id  =  1;	sakila_1
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE store_id  =  1;	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;	sakila_1
SELECT T1.first_name ,  T1.last_name ,  T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1;	sakila_1
SELECT T2.name FROM film AS T1 JOIN LANGUAGE AS T2 ON T1.language_id  =  T2.language_id WHERE T1.title  =  'AIRPORT POLLOCK';	sakila_1
SELECT T2.name FROM film AS T1 JOIN LANGUAGE AS T2 ON T1.language_id  =  T2.language_id WHERE T1.title  =  'AIRPORT POLLOCK';	sakila_1
SELECT count(*) FROM store;	sakila_1
SELECT count(*) FROM store;	sakila_1
SELECT count(DISTINCT rating) FROM film;	sakila_1
SELECT count(DISTINCT rating) FROM film;	sakila_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%';	sakila_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%';	sakila_1
SELECT count(*) FROM inventory WHERE store_id  =  1;	sakila_1
SELECT count(*) FROM inventory WHERE store_id  =  1;	sakila_1
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1;	sakila_1
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1;	sakila_1
SELECT T2.address ,  T1.email FROM customer AS T1 JOIN address AS T2 ON T2.address_id  =  T1.address_id WHERE T1.first_name  =  'LINDA';	sakila_1
SELECT T2.address ,  T1.email FROM customer AS T1 JOIN address AS T2 ON T2.address_id  =  T1.address_id WHERE T1.first_name  =  'LINDA';	sakila_1
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200;	sakila_1
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200;	sakila_1
SELECT T1.first_name ,  T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id  =  T2.customer_id ORDER BY T2.rental_date ASC LIMIT 1;	sakila_1
SELECT T1.first_name ,  T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id  =  T2.customer_id ORDER BY T2.rental_date ASC LIMIT 1;	sakila_1
SELECT DISTINCT T1.first_name ,  T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id  =  T2.staff_id JOIN customer AS T3 ON T2.customer_id  =  T3.customer_id WHERE T3.first_name  =  'APRIL' AND T3.last_name  =  'BURNS';	sakila_1
SELECT DISTINCT T1.first_name ,  T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id  =  T2.staff_id JOIN customer AS T3 ON T2.customer_id  =  T3.customer_id WHERE T3.first_name  =  'APRIL' AND T3.last_name  =  'BURNS';	sakila_1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1;	sakila_1
