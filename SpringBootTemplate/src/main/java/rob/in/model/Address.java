package rob.in.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "address")
public class Address implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Long id;

	@Column(name = "flatOrHouseNumber")
	private String flatOrHouseNumber;

	@Column(name = "contactNumber")
	private String contactNumber;

	@Column(name = "towerName")
	private String towerName;

	@Column(name = "socityOrStreatName")
	private String socityOrStreatName;

	@Column(name = "nearBy")
	private String nearBy;

	@Column(name = "city")
	private String city;

	@Column(name = "district")
	private String district;

	@Column(name = "pin")
	private String pin;

	@Column(name = "country")
	private String country;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFlatOrHouseNumber() {
		return flatOrHouseNumber;
	}

	public void setFlatOrHouseNumber(String flatOrHouseNumber) {
		this.flatOrHouseNumber = flatOrHouseNumber;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getTowerName() {
		return towerName;
	}

	public void setTowerName(String towerName) {
		this.towerName = towerName;
	}

	public String getSocityOrStreatName() {
		return socityOrStreatName;
	}

	public void setSocityOrStreatName(String socityOrStreatName) {
		this.socityOrStreatName = socityOrStreatName;
	}

	public String getNearBy() {
		return nearBy;
	}

	public void setNearBy(String nearBy) {
		this.nearBy = nearBy;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	

}
