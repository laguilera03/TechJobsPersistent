--Part 1
SELECT employers.Id, data_type
FROM techjobs.employers, information_schema.columns
WHERE table_name = 'employers' AND table_schema = 'techjobs' AND column_name LIKE 'Id';

--Part 2
SELECT employers.name
FROM techjobs.employers
WHERE employers.location = 'St. Louis City';

--Part 3
