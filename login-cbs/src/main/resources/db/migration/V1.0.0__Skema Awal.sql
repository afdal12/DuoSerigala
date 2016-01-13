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