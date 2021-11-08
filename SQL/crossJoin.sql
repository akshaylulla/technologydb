SELECT a.tech_id, a.title, b.inventor
FROM public."Technologies" as a CROSS JOIN public."Inventor" as b;
