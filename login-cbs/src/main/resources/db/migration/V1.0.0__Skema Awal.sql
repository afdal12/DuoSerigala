CREATE TABLE public.produk
(
  id character varying(32) NOT NULL,
  harga numeric(16,2) NOT NULL,
  kode character varying(3) NOT NULL,
  min_stock integer NOT NULL,
  nama character varying(30),
  stock integer NOT NULL,
  CONSTRAINT produk_pkey PRIMARY KEY (id),
  CONSTRAINT uk_tr68qx9s912mm4jql3qtffcl9 UNIQUE (kode)
);