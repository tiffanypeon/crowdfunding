
-- -- Select the category names and the sum total of the 
-- pledge amounts of all the pledges in the book category.

SELECT projects.name AS 'Project Name', SUM (pledge_amount) 
AS 'Total Pledged' FROM pledges 
JOIN projects ON pledges.project_id = projects.id
GROUP BY projects.name; 

SELECT users.name AS 'Participant', users.age AS 'Age', SUM (pledge_amount) 
AS 'Total Pledged' FROM pledges 
JOIN users ON pledges.user_id = users.id
GROUP BY users.id; 

SELECT projects.name AS 'Project Name', SUM (pledge_amount) 
AS 'Total Pledged' FROM pledges 
JOIN projects ON pledges.project_id = projects.id
WHERE pledges.pledge_amount >= projects.goal
GROUP BY projects.id; 

SELECT pledge_amount AS 'Pledge Amount', users.name AS 'Participant' 
FROM pledges JOIN users ON 
pledges.user_id = users.id
ORDER BY pledges.pledge_amount DESC; 

SELECT projects.name AS 'Project Name', pledge_amount 
AS 'Amount Pledged' 
FROM pledges JOIN projects ON 
pledges.project_id = projects.id
WHERE projects.category = "music"
ORDER BY pledges.pledge_amount DESC; 

-- Total of each book charity 
SELECT projects.name AS 'Project Name', SUM (pledge_amount)
AS 'Amount Pledged' 
FROM pledges JOIN projects ON 
pledges.project_id = projects.id
WHERE projects.category = "books"
GROUP BY projects.name; 

-- Total of all books category pledges
SELECT SUM (pledge_amount)
AS 'Amount Pledged' 
FROM pledges JOIN projects ON 
pledges.project_id = projects.id
WHERE projects.category = "books"; 
