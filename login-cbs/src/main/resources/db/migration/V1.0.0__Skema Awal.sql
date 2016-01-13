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

CREATE TABLE public.pelanggan
(
  id character varying(255) NOT NULL,
  alamat character varying(255) NOT NULL,
  kode character varying(255) NOT NULL,
  nama character varying(255) NOT NULL,
  telp character varying(255) NOT NULL,
  CONSTRAINT pelanggan_pkey PRIMARY KEY (id),
  CONSTRAINT unique_kodePelanggan UNIQUE (kode)
);

CREATE TABLE public.satuan
(
  id character varying(255) NOT NULL,
  kode character varying(255) NOT NULL,
  nama character varying(255) NOT NULL,
  CONSTRAINT satuan_pkey PRIMARY KEY (id),
  CONSTRAINT unique_kodeSatuan UNIQUE (kode)
);
CREATE TABLE public.transaksi
(
  id character varying(255) NOT NULL,
  jumlah_item bigint NOT NULL,
  kode character varying(255) NOT NULL,
  tanggal_transaksi date,
  CONSTRAINT transaksi_pkey PRIMARY KEY (id),
  CONSTRAINT unique_kodeTransaksi UNIQUE (kode)
);
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

