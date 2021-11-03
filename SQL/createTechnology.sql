-- Table: public.Technology

-- DROP TABLE public."Technology";

CREATE TABLE public."Technology"
(
    tech_id integer NOT NULL,
    title character varying(1000) COLLATE pg_catalog."default" NOT NULL,
    link character varying(500) COLLATE pg_catalog."default" NOT NULL,
    date date,
    contact_email character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT "Technology_pkey" PRIMARY KEY (tech_id),
    CONSTRAINT contact_email FOREIGN KEY (contact_email)
        REFERENCES public."Contact" (email) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Technology"
    OWNER to postgres;
