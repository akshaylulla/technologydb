-- Table: public.Categories

-- DROP TABLE public."Categories";

CREATE TABLE public."Categories"
(
    tech_id integer NOT NULL,
    category character varying(500) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tech_id FOREIGN KEY (tech_id)
        REFERENCES public."Technology" (tech_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Categories"
    OWNER to postgres;
