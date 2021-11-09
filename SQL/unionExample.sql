SELECT * 
FROM public."Technologies" as t1 
WHERE t1.contact_email='harshith@drexel.edu' UNION
(SELECT * FROM public."Technologies" as t2
WHERE t2.contact_email='sarah.a.johnson@drexel.edu');
