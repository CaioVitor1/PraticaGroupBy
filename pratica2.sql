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


Bônus

SELECT schools.name AS school, courses.name AS course, COUNT(educations.status) AS studentsCount,
educations.status
from educations join schools ON educations."schoolId" = schools.id
JOIN courses ON educations."courseId" = courses.id
WHERE educations.status = 'ongoing' or educations.status = 'finished'
GROUP BY school, course, educations.status
ORDER BY studentsCount DESC
LIMIT 3;











