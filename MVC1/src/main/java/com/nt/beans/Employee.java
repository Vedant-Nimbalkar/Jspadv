package com.nt.beans;

public class Employee {
   
	//bean properties
	private String ename;
	private String eadd;
	private Float basicSalary;
	private Float grossSalary;
	private Float netSalary;
	
	 public Employee() {
	        System.out.println("Employee object created");
	    }
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEadd() {
		return eadd;
	}
	public void setEadd(String eadd) {
		this.eadd = eadd;
	}
	public Float getBasicSalary() {
		return basicSalary;
	}
	public void setBasicSalary(Float basicSalary) {
		this.basicSalary = basicSalary;
	}
	public Float getGrossSalary() {
		return grossSalary;
	}
	public void setGrossSalary(Float grossSalary) {
		this.grossSalary = grossSalary;
	}
	public Float getNetSalary() {
		return netSalary;
	}
	public void setNetSalary(Float netSalary) {
		this.netSalary = netSalary;
	}
	@Override
	public String toString() {
		return "Employee [ename=" + ename + ", eadd=" + eadd + ", basicSalary=" + basicSalary + ", grossSalary="
				+ grossSalary + ", netSalary=" + netSalary + "]";
	}
	
	
}
