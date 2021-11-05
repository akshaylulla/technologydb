SELECT *
FROM public."Technology" as t1
INNER JOIN public."Inventor" as t2
ON t1.tech_id = t2.tech_id WHERE t2.inventor='xyz';
