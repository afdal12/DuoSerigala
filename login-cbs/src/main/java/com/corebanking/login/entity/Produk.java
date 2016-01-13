package com.corebanking.login.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity @Table(name = "produk")
public class Produk {
	@Id @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;

	@Column(unique = true, nullable = false)
	private String kode;
	
	private String nama;
	private int harga;
	private int stock;
	private int min_stock;
	
}
