package rob.in.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "enrollmentNumner")
	private Long enrollmentNumner;

	@Column(name = "name")
	private String name;

	@Column(name = "fatherName")
	private String fatherName;

	@Column(name = "motherName")
	private String motherName;

	@Column(name = "dob")
	private Date dob;

	@Column(name = "doj")
	private Date doj;

	@Column(name = "prevSchoolName")
	private String prevSchoolName;

	@Column(name = "std")
	private String std;

	@Column(name = "section")
	private String section;

	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id", referencedColumnName = "id")
	private Address address;

	public Long getEnrollmentNumner() {
		return enrollmentNumner;
	}

	public void setEnrollmentNumner(Long enrollmentNumner) {
		this.enrollmentNumner = enrollmentNumner;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj = doj;
	}

	public String getPrevSchoolName() {
		return prevSchoolName;
	}

	public void setPrevSchoolName(String prevSchoolName) {
		this.prevSchoolName = prevSchoolName;
	}

	public String getStd() {
		return std;
	}

	public void setStd(String std) {
		this.std = std;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

}
