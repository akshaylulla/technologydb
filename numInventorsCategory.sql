SELECT COUNT(*) 
FROM public."Inventor" as t3
INNER JOIN
(SELECT t1.tech_id
FROM public."Technology" as t1
RIGHT JOIN public."Categories" as t2
ON t1.tech_id = t2.tech_id WHERE t2.category='Analytics & Information Technology') as t4
ON t3.tech_id = t4.tech_id;
