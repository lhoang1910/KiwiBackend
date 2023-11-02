package com.kiwi.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "image")
public class Image {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String name;

	private String type;

	private long size;

	@Lob
	private byte[] data;

	@ManyToOne
	@JoinColumn(name = "uploaded_by")
	private User uploadedBy;

	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Image(long id, String name, String type, long size, byte[] data, User uploadedBy) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.size = size;
		this.data = data;
		this.uploadedBy = uploadedBy;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	public User getUploadedBy() {
		return uploadedBy;
	}

	public void setUploadedBy(User uploadedBy) {
		this.uploadedBy = uploadedBy;
	}

}
