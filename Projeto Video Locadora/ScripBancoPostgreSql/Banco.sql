---
CREATE SEQUENCE public.dependente_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.dependente_seq
  OWNER TO postgres;



CREATE SEQUENCE public.cliente_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.cliente_seq
  OWNER TO postgres;


CREATE TABLE public.cliente
(
  id_cliente integer NOT NULL DEFAULT nextval('cliente_seq'::regclass),
  nome character varying(100),
  email character varying(100),
  cpf character varying(100),
  endereco character varying(500),
  local_trabalho character varying(100),
  fone_celular character varying(12),
  fone_comercial character varying(12),
  fone_residencial character varying(12),
  sexo character varying(10),
  status integer,
  CONSTRAINT pk_cliente PRIMARY KEY (id_cliente)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.cliente
  OWNER TO postgres;

CREATE TABLE public.dependente
(
  id_dependente integer NOT NULL DEFAULT nextval('dependente_seq'::regclass),
  nome character varying(100),
  email character varying(100),
  sexo character varying(10),
  data_nascimento date,
  id_cliente integer,
  CONSTRAINT pk_dependente PRIMARY KEY (id_dependente),
  CONSTRAINT fk_cliente FOREIGN KEY (id_cliente)
      REFERENCES public.cliente (id_cliente) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.dependente
  OWNER TO postgres;