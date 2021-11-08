SELECT DISTINCT email, contact_name
FROM public."Contact" as t3
RIGHT JOIN
(SELECT * 
FROM public."Technologies" as t1
LEFT JOIN public."Categories" as t2
ON t1.tech_id = t2.tech_id WHERE t2.category='Analytics & Information Technology') as t4
ON t3.email = t4.contact_email;
