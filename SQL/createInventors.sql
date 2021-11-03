-- Table: public.Inventor

-- DROP TABLE public."Inventor";

CREATE TABLE public."Inventor"
(
    tech_id integer NOT NULL,
    inventor character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tech_id FOREIGN KEY (tech_id)
        REFERENCES public."Technology" (tech_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Inventor"
    OWNER to postgres;
