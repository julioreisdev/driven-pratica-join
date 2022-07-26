/* Q1 */
SELECT users.id, users.name, cities.name AS city FROM users 
JOIN cities ON cities.id = users."cityId" WHERE cities.name = 'Rio de Janeiro';

/* Q2 */
SELECT testimonials.id AS id, u1.name AS "writer", u2.name as "recipient", testimonials.message AS message 
FROM testimonials 
JOIN users u1 ON testimonials."writerId" = u1.id 
JOIN users u2 ON testimonials."recipientId" = u2.id;

/* Q3 */
SELECT users.id AS id, users.name AS name, courses.name AS course, schools.name AS school, educations."endDate" 
FROM users
JOIN educations ON educations."userId" = users.id
JOIN courses ON courses.id = educations."courseId"
JOIN schools ON schools.id = educations."schoolId"
WHERE educations.status = 'finished' and users.id = 30;

/* Q4 */
SELECT users.id AS id, users.name AS name, roles.name AS role, companies.name AS company, experiences."startDate"
FROM companies
JOIN experiences ON experiences."companyId" = companies.id
JOIN users ON users.id = experiences."userId"
JOIN roles ON roles.id = experiences."roleId"
WHERE users.id = 50 and experiences."endDate" IS NULL;
