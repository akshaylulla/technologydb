SELECT b.tech_id, b.title, a.inventor
FROM public."Inventor" as a CROSS JOIN public."Technologies" as b WHERE b.tech_id=a.tech_id;
