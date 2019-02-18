-- SEQUENCIAS
-- Sequence: public.cartao_id_cartao_seq

-- DROP SEQUENCE public.cartao_id_cartao_seq;

CREATE SEQUENCE public.cartao_id_cartao_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.cartao_id_cartao_seq
  OWNER TO postgres;
  
-- Sequence: public.cheque_id_cheque_seq

-- DROP SEQUENCE public.cheque_id_cheque_seq;

CREATE SEQUENCE public.cheque_id_cheque_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.cheque_id_cheque_seq
  OWNER TO postgres;
  
-- Sequence: public.cliente_id_cliente_seq

-- DROP SEQUENCE public.cliente_id_cliente_seq;

CREATE SEQUENCE public.cliente_id_cliente_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.cliente_id_cliente_seq
  OWNER TO postgres;
  
-- Sequence: public.dependente_id_dependente_seq

-- DROP SEQUENCE public.dependente_id_dependente_seq;

CREATE SEQUENCE public.dependente_id_dependente_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.dependente_id_dependente_seq
  OWNER TO postgres;

-- Sequence: public.filme_id_filme_seq

-- DROP SEQUENCE public.filme_id_filme_seq;

CREATE SEQUENCE public.filme_id_filme_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.filme_id_filme_seq
  OWNER TO postgres;
  
-- Sequence: public.forma_pagamento_id_form_pagamento_seq

-- DROP SEQUENCE public.forma_pagamento_id_form_pagamento_seq;

CREATE SEQUENCE public.forma_pagamento_id_form_pagamento_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.forma_pagamento_id_form_pagamento_seq
  OWNER TO postgres;

-- Sequence: public.fornecedor_id_fornecedor_seq

-- DROP SEQUENCE public.fornecedor_id_fornecedor_seq;

CREATE SEQUENCE public.fornecedor_id_fornecedor_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.fornecedor_id_fornecedor_seq
  OWNER TO postgres;
  
-- Sequence: public.funcao_id_funcao_seq

-- DROP SEQUENCE public.funcao_id_funcao_seq;

CREATE SEQUENCE public.funcao_id_funcao_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.funcao_id_funcao_seq
  OWNER TO postgres;
  
 -- Sequence: public.genero_id_genero_seq

-- DROP SEQUENCE public.genero_id_genero_seq;

CREATE SEQUENCE public.genero_id_genero_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.genero_id_genero_seq
  OWNER TO postgres;

-- Sequence: public.locacao_filme_id_filme_locacao_seq

-- DROP SEQUENCE public.locacao_filme_id_filme_locacao_seq;

CREATE SEQUENCE public.locacao_filme_id_filme_locacao_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.locacao_filme_id_filme_locacao_seq
  OWNER TO postgres;

 -- Sequence: public.locacao_id_locacao_seq

-- DROP SEQUENCE public.locacao_id_locacao_seq;

CREATE SEQUENCE public.locacao_id_locacao_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.locacao_id_locacao_seq
  OWNER TO postgres;

 -- Sequence: public.pagamento_id_pagamento_seq

-- DROP SEQUENCE public.pagamento_id_pagamento_seq;

CREATE SEQUENCE public.pagamento_id_pagamento_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.pagamento_id_pagamento_seq
  OWNER TO postgres;

-- Sequence: public.role_id_seq

-- DROP SEQUENCE public.role_id_seq;

CREATE SEQUENCE public.role_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.role_id_seq
  OWNER TO postgres;

-- Sequence: public.status_cliente_id_status_seq

-- DROP SEQUENCE public.status_cliente_id_status_seq;

CREATE SEQUENCE public.status_cliente_id_status_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.status_cliente_id_status_seq
  OWNER TO postgres;

-- Sequence: public.status_locacao_id_status_locacao_seq

-- DROP SEQUENCE public.status_locacao_id_status_locacao_seq;

CREATE SEQUENCE public.status_locacao_id_status_locacao_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.status_locacao_id_status_locacao_seq
  OWNER TO postgres;


-- Sequence: public.tipo_midia_id_tipo_midia_seq

-- DROP SEQUENCE public.tipo_midia_id_tipo_midia_seq;

CREATE SEQUENCE public.tipo_midia_id_tipo_midia_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.tipo_midia_id_tipo_midia_seq
  OWNER TO postgres;

 -- Sequence: public.tipo_midia_id_tipo_midia_seq

-- DROP SEQUENCE public.tipo_midia_id_tipo_midia_seq;

CREATE SEQUENCE public.tipo_midia_id_tipo_midia_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.tipo_midia_id_tipo_midia_seq
  OWNER TO postgres; 



-- Criando TABELAS

-- Table: public.funcao

-- DROP TABLE public.funcao;

CREATE TABLE public.funcao
(
  id_funcao integer NOT NULL DEFAULT nextval('funcao_id_funcao_seq'::regclass),
  descricao character varying(255),
  CONSTRAINT funcao_pkey PRIMARY KEY (id_funcao)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.funcao
  OWNER TO postgres;
  
 -- Table: public.usuario

-- DROP TABLE public.usuario;

CREATE TABLE public.usuario
(
  id bigint NOT NULL DEFAULT nextval('usuario_id_seq'::regclass),
  login character varying(255),
  nome character varying(255),
  senha character varying(255),
  id_funcao integer,
  CONSTRAINT usuario_pkey PRIMARY KEY (id),
  CONSTRAINT fkbp36rhhdenvuvqrt6wlmjff5c FOREIGN KEY (id_funcao)
      REFERENCES public.funcao (id_funcao) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.usuario
  OWNER TO postgres;


-- Table: public.role

-- DROP TABLE public.role;

CREATE TABLE public.role
(
  id bigint NOT NULL DEFAULT nextval('role_id_seq'::regclass),
  descricao character varying(255),
  nome_role character varying(255),
  CONSTRAINT role_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.role
  OWNER TO postgres;
  
 -- Table: public.usuarios_role

-- DROP TABLE public.usuarios_role;
  
 CREATE TABLE public.usuarios_role
(
  usuario_id bigint NOT NULL,
  role_id bigint NOT NULL,
  CONSTRAINT fkb4lgjns7jnrvtimlocbhgu9eu FOREIGN KEY (role_id)
      REFERENCES public.role (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fkopcaagbsri62yny3hlxui91vb FOREIGN KEY (usuario_id)
      REFERENCES public.usuario (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT uk_krvk2qx218dxa3ogdyplk0wxw UNIQUE (role_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.usuarios_role
  OWNER TO postgres;
  

-- Table: public.valores_locacao

-- DROP TABLE public.valores_locacao;

CREATE TABLE public.valores_locacao
(
  id integer NOT NULL,
  descricao character varying(255),
  valor double precision,
  CONSTRAINT valores_locacao_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.valores_locacao
  OWNER TO postgres;
  
-- Table: public.tipo_midia

-- DROP TABLE public.tipo_midia;

CREATE TABLE public.tipo_midia
(
  id_tipo_midia integer NOT NULL DEFAULT nextval('tipo_midia_id_tipo_midia_seq'::regclass),
  descricao character varying(255),
  valor double precision,
  CONSTRAINT tipo_midia_pkey PRIMARY KEY (id_tipo_midia)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.tipo_midia
  OWNER TO postgres;
 
-- Table: public.status_locacao

-- DROP TABLE public.status_locacao;

CREATE TABLE public.status_locacao
(
  id_status_locacao integer NOT NULL DEFAULT nextval('status_locacao_id_status_locacao_seq'::regclass),
  descricao character varying(255),
  CONSTRAINT status_locacao_pkey PRIMARY KEY (id_status_locacao)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.status_locacao
  OWNER TO postgres;
  
-- Table: public.status_cliente

-- DROP TABLE public.status_cliente;

CREATE TABLE public.status_cliente
(
  id_status integer NOT NULL DEFAULT nextval('status_cliente_id_status_seq'::regclass),
  descricao character varying(255),
  CONSTRAINT status_cliente_pkey PRIMARY KEY (id_status)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.status_cliente
  OWNER TO postgres;

-- Table: public.cartao

-- DROP TABLE public.cartao;

CREATE TABLE public.cartao
(
  id_cartao integer NOT NULL DEFAULT nextval('cartao_id_cartao_seq'::regclass),
  data_autorizacao date,
  numero character varying(255),
  operadora character varying(255),
  id_pagamento integer,
  CONSTRAINT cartao_pkey PRIMARY KEY (id_cartao),
  CONSTRAINT fkiwhdf5j847hgujf6yj3w9yagp FOREIGN KEY (id_pagamento)
      REFERENCES public.pagamento (id_pagamento) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.cartao
  OWNER TO postgres;


-- Table: public.cheque

-- DROP TABLE public.cheque;

CREATE TABLE public.cheque
(
  id_cheque integer NOT NULL DEFAULT nextval('cheque_id_cheque_seq'::regclass),
  agencia character varying(255),
  banco character varying(255),
  conta character varying(255),
  numero_cheque character varying(255),
  id_pagamento integer,
  CONSTRAINT cheque_pkey PRIMARY KEY (id_cheque),
  CONSTRAINT fktfb30rv6to0n6bhqd9r3mhktk FOREIGN KEY (id_pagamento)
      REFERENCES public.pagamento (id_pagamento) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.cheque
  OWNER TO postgres;

-- Table: public.forma_pagamento

-- DROP TABLE public.forma_pagamento;

CREATE TABLE public.forma_pagamento
(
  id_form_pagamento integer NOT NULL DEFAULT nextval('forma_pagamento_id_form_pagamento_seq'::regclass),
  descricao character varying(255),
  CONSTRAINT forma_pagamento_pkey PRIMARY KEY (id_form_pagamento)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.forma_pagamento
  OWNER TO postgres;

-- Table: public.pagamento

-- DROP TABLE public.pagamento;

CREATE TABLE public.pagamento
(
  id_pagamento integer NOT NULL DEFAULT nextval('pagamento_id_pagamento_seq'::regclass),
  valor double precision,
  valor_desconto double precision,
  valor_multa double precision,
  valor_total double precision,
  id_forma_pagamento integer,
  id_locacao integer,
  CONSTRAINT pagamento_pkey PRIMARY KEY (id_pagamento),
  CONSTRAINT fkcawh312xhbiry6f2umjgraxbw FOREIGN KEY (id_locacao)
      REFERENCES public.locacao (id_locacao) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fks0hk9akjtxwvu50kv1rf2j8b FOREIGN KEY (id_forma_pagamento)
      REFERENCES public.forma_pagamento (id_form_pagamento) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.pagamento
  OWNER TO postgres;


-- Table: public.dependente

-- DROP TABLE public.dependente;

CREATE TABLE public.dependente
(
  id_dependente integer NOT NULL DEFAULT nextval('dependente_id_dependente_seq'::regclass),
  ativo boolean,
  data_nascimento timestamp without time zone,
  email character varying(255),
  nome character varying(255),
  sexo character varying(255),
  id_cliente integer NOT NULL,
  CONSTRAINT dependente_pkey PRIMARY KEY (id_dependente),
  CONSTRAINT fkbrfqlv5vrxynid2x16gqsjjq6 FOREIGN KEY (id_cliente)
      REFERENCES public.cliente (id_cliente) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.dependente
  OWNER TO postgres;

-- Table: public.cliente

-- DROP TABLE public.cliente;

CREATE TABLE public.cliente
(
  id_cliente integer NOT NULL DEFAULT nextval('cliente_id_cliente_seq'::regclass),
  cpf character varying(255),
  email character varying(255),
  endereco character varying(255),
  fone_celular character varying(255),
  fone_comercial character varying(255),
  fone_residencial character varying(255),
  local_trabalho character varying(255),
  nome character varying(255),
  sexo character varying(255),
  status_id_status integer,
  CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente),
  CONSTRAINT fkrx0q5sme96ekalj3hxi53ovpc FOREIGN KEY (status_id_status)
      REFERENCES public.status_cliente (id_status) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.cliente
  OWNER TO postgres;

-- Table: public.locacao

-- DROP TABLE public.locacao;

CREATE TABLE public.locacao
(
  id_locacao integer NOT NULL DEFAULT nextval('locacao_id_locacao_seq'::regclass),
  data_locacao date,
  valor double precision,
  valor_pago double precision,
  id_cliente integer,
  status_locacao integer,
  CONSTRAINT locacao_pkey PRIMARY KEY (id_locacao),
  CONSTRAINT fkfcywoxqwqyo3sektg84ph9a2m FOREIGN KEY (status_locacao)
      REFERENCES public.status_locacao (id_status_locacao) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fklsy3ikif819btwjy89h4ee1cv FOREIGN KEY (id_cliente)
      REFERENCES public.cliente (id_cliente) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.locacao
  OWNER TO postgres;

-- Table: public.filme

-- DROP TABLE public.filme;

CREATE TABLE public.filme
(
  id_filme integer NOT NULL DEFAULT nextval('filme_id_filme_seq'::regclass),
  ano integer,
  categoria integer,
  data_aquisicao date,
  direcao character varying(255),
  duracao character varying(255),
  elenco character varying(255),
  lancamento character varying(255),
  numero_serie character varying(255),
  pais character varying(255),
  sinopse character varying(255),
  titulo_original character varying(255),
  titulo_portugues character varying(255),
  id_fornecedor integer,
  id_genero integer,
  tipo_midia integer,
  valor_id integer,
  CONSTRAINT filme_pkey PRIMARY KEY (id_filme),
  CONSTRAINT fk5dflsl7s7w380gkoxkdkx49yi FOREIGN KEY (tipo_midia)
      REFERENCES public.tipo_midia (id_tipo_midia) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fkbb2iplx22uuqy10h93besyo9w FOREIGN KEY (valor_id)
      REFERENCES public.valores_locacao (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fkiw2u9h5d17mlpi0qem6cp29ac FOREIGN KEY (id_fornecedor)
      REFERENCES public.fornecedor (id_fornecedor) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fkqbq6jc1r8xbpsqiu2jud0cqi8 FOREIGN KEY (id_genero)
      REFERENCES public.genero (id_genero) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.filme
  OWNER TO postgres;

-- Table: public.locacao_filme

-- DROP TABLE public.locacao_filme;

CREATE TABLE public.locacao_filme
(
  id_filme_locacao integer NOT NULL DEFAULT nextval('locacao_filme_id_filme_locacao_seq'::regclass),
  data_devolucao date,
  data_prevista_devolucao date,
  status integer,
  valor double precision,
  id_filme integer NOT NULL,
  id_locacao integer NOT NULL,
  CONSTRAINT locacao_filme_pkey PRIMARY KEY (id_filme_locacao),
  CONSTRAINT fkbdera1bxn9oebkevqqsct3viw FOREIGN KEY (id_locacao)
      REFERENCES public.locacao (id_locacao) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fkqomo8mtnry20h79obg18jl9b0 FOREIGN KEY (id_filme)
      REFERENCES public.filme (id_filme) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.locacao_filme
  OWNER TO postgres;

  


  
 