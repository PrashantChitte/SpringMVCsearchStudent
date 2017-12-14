package aarambh.milk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SuplierTable")
public class SuplierEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int supId;
	@Column
	private String supName;
	@Column
	private String email;
	@Column
	private String gender;
	@Column
	private String mobile;
	@Column
	private String address;
	public SuplierEntity() {
		// TODO Auto-generated constructor stub
	}
	public int getSupId() {
		return supId;
	}
	public void setSupId(int supId) {
		this.supId = supId;
	}
	public String getSupName() {
		return supName;
	}
	public void setSupName(String supName) {
		this.supName = supName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "SuplierEntity [supId=" + supId + ", supName=" + supName + ", email=" + email + ", gender=" + gender
				+ ", mobile=" + mobile + ", address=" + address + "]";
	}
	
	
}
