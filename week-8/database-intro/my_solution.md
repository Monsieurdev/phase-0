1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id = 7;
6.SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density;
7.SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8.SELECT state_name, region_id FROM states ORDER BY region_id;
9.SELECT * FROM regions WHERE region_name LIKE '%Central';
10.SELECT regions.region_name, states.state_name FROM regions JOIN states ON states.region_id = regions.id;

[Schema](db_schema.png)




###What are databases for?
They are used to store data in a structure ways so that it can easily searched and access int the future.
###What is a one-to-many relationship?
We have one-to-many relationship if a table can have many tables related to it and not the other way around. for example; a hospital table can have many patients but a patient can't have many hospitals.
###What is a primary key? What is a foreign key? How can you determine which is which?
A primary key uniquely identify a row and the foreign key identify a table in another table.
###How can you select information out of a SQL database? What are some general guidelines for that?
You can clauses such as SELECT to create queries from a SQL database.