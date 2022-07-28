1 - SELECT COUNT(experiences."endDate") AS currentExperiences FROM experiences;

2 - SELECT educations."userId" AS id, count(educations."courseId") AS educations
FROM educations group by (educations."userId");

3 - SELECT users.name AS writer, COUNT(testimonials."writerId") AS testimonailCount
FROM testimonials JOIN users ON testimonials."writerId" = users.id
WHERE testimonials."writerId" = 435 
group by (users.name);

4 - SELECT MAX(jobs.salary) AS maximumSalary, roles.name AS role
FROM jobs JOIN roles 
ON jobs."roleId" = roles.id 
WHERE jobs.active = true
group by roles.name
order by maximumSalary asc;












