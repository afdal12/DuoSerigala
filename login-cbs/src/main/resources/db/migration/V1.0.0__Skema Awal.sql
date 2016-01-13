CREATE TABLE supplier
(
  id character varying(32) NOT NULL,
  kode character varying(255) NOT NULL,
  alamat character varying(50) NOT NULL,
  nama character varying(255) NOT NULL,
  telp character varying(255) NOT NULL
 
);
ALTER table only supplier 
	ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);

ALTER table only supplier 
	ADD CONSTRAINT unique_kode UNIQUE (kode);

