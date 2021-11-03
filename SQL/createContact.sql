-- Table: public.Contact

-- DROP TABLE public."Contact";

CREATE TABLE public."Contact"
(
    email character varying(200) COLLATE pg_catalog."default" NOT NULL,
    name character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT contact_person_pkey PRIMARY KEY (email)
)

TABLESPACE pg_default;

ALTER TABLE public."Contact"
    OWNER to postgres;
