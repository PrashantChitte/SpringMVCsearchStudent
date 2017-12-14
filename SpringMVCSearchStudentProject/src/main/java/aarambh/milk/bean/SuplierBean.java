package aarambh.milk.bean;

public class SuplierBean {
	
	private int supId;
	private String supName;
	private String email;
	private String gender;
	private String mobile;
	private String address;
	
	 
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
		return "SuplierBean [supId=" + supId + ", supName=" + supName + ", email=" + email + ", gender=" + gender
				+ ", mobile=" + mobile + ", address=" + address + "]";
	}
	
}
