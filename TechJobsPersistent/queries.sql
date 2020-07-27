--Part 1
SELECT employers.Id, data_type
FROM techjobs.employers, information_schema.columns
WHERE table_name = 'employers' AND table_schema = 'techjobs' AND column_name LIKE 'Id';

--Part 2
SELECT employers.name
FROM techjobs.employers
WHERE employers.location = 'St. Louis City';

--Part 3
SELECT DISTINCT skills.name, skills.description, jobs.name
FROM skills, jobskills, jobs
WHERE jobskills.jobid = jobs.id AND jobskills.skillid = skills.id AND jobs.name IS NOT NULL
ORDER BY skills.name;