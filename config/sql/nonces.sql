-- Table: public.nonces

-- DROP TABLE public.nonces;

CREATE TABLE public.nonces
(
  nonce text,
  expire timestamp with time zone,
  CONSTRAINT nonces_id_key UNIQUE (nonce)
) TABLESPACE videosspace;

GRANT ALL ON TABLE public.nonces TO kemal;

-- Index: public.nonces_nonce_idx

-- DROP INDEX public.nonces_nonce_idx;

CREATE INDEX nonces_nonce_idx
  ON public.nonces
  USING btree
  (nonce COLLATE pg_catalog."default") TABLESPACE videosspace;

