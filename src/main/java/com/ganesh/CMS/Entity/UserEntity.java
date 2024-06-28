package com.ganesh.CMS.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "computer_user")
public class UserEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long userId;
	private String firstName;
	private String secondName;
	private String dateOfBirth;
	private String gender;
	private long mobile;
	private String personalMail;
	private String officeMail;
	private String maritialStatus;
	private long aadhar;
	private String address;
	private String pan;
	private String uan;
	private String bankName;
	private String accountNumber;
	private String ifsc;
	private String branch;
	private String dateOfJoin;
	private String CreatedBy;
	private String CreatedDate;
	private String ModifiedBy;
	private String ModifiedDate;
	private int IsActive;
}
