package com.itp.service;

import com.nt.beans.Employee;

public class PaySlipGeneratorService {
  public void generatePaySlip(Employee emp) {
    Float grossSalary=emp.getBasicSalary()+emp.getBasicSalary()*0.4f;
    Float netSalary=grossSalary-(grossSalary*.2f);
    
    emp.setGrossSalary(grossSalary);
    emp.setNetSalary(netSalary);

    
  }

}