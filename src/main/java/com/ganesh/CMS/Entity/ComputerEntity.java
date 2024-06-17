package com.ganesh.CMS.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "computer")
public class ComputerEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long computerId;
	private String computerName;
	private String userName;
	private String processor;
	private String ram;
	private String rom;
	private String ModifiedBy;
	private String ModifiedDate;
	private String CreatedBy;
	private String CreatedDate;
	private String IsActive;
}
