SELECT * FROM payment WHERE amount >= 500;
SELECT * FROM student WHERE dateadd(year, -20, '20231117') > birthday;
SELECT * FROM student WHERE groupnumber = 10 AND dateadd(year, -20, '20231117') < birthday;
SELECT * FROM student WHERE name LIKE 'Mike %' OR groupnumber IN (4, 5, 6) GROUP BY id;
SELECT * FROM payment WHERE payment_date >= dateadd(month, -8, '20221013');
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE (name LIKE 'Roxi %' AND groupnumber = 4) or (name LIKE 'Tallie %' AND groupnumber = 9) GROUP BY id;