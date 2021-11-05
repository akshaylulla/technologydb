SELECT *
FROM public."Technology" as t1
LEFT JOIN public."Categories" as t2
ON t1.tech_id = t2.tech_id WHERE t2.category='Circuits & Sensors > Hardware: Semiconductors & Integrated Circuits';
