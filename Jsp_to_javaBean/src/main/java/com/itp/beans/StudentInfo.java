package com.itp.beans;



public class StudentInfo {
   private int sno;
   private String sname;
   private String sadd;
   private float avg;
   public int getSno() {
	   return sno;
   }
 public StudentInfo() {
	 System.out.println("in default constructor");
 }
 
   public String getSname() {
	return sname;
   }
   
   public void setSname(String sname) {
	this.sname = sname;
   }
   
   public String getSadd() {
	return sadd;
   }
   
   public void setSadd(String sadd) {
	this.sadd = sadd;
   }
   
   public float getAvg() {
	return avg;
   }
   public void setAvg(float avg) {
	this.avg = avg;
   }
   public void setSno(int sno) {
	this.sno = sno;
   }
   @Override
   public String toString() {
	return "StudentInfo [sno=" + sno + ", sname=" + sname + ", sadd=" + sadd + ", avg=" + avg + "]";
   }
   
   
}
