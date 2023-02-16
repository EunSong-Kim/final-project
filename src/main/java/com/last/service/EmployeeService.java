package com.last.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.last.dto.CertificateDto;
import com.last.dto.EmployeeDto;
import com.last.dto.PersonnelDto;
import com.last.mapper.EmployeeMapper;
import com.last.vo.Department;
import com.last.vo.Employees;
import com.last.vo.Grades;
import com.last.vo.Position;
import com.last.web.request.EmployeeRegisterForm;

@Service
@Transactional
public class EmployeeService {

	
	@Autowired
	private EmployeeMapper employeeMapper;
	
	public List<EmployeeDto> getAllEmployees(Map<String, Object> param) {
		return employeeMapper.getAllEmployees(param);
	}
	
	public List<PersonnelDto> getAllPersonnel(Map<String, Object> param) {
		return employeeMapper.getAllPersonnel(param);
	}
	
	public List<CertificateDto> getAllcertificate() {
		return employeeMapper.getAllCertificate();
	}
	
	public List<Position> getAllPosition() {
		return employeeMapper.getAllPosition();
	}
	public List<Department> getAllDepartment() {
		return employeeMapper.getAllDepartment();
	}
	public List<Employees> getAllEmployee() {
		return employeeMapper.getAllEmployee();
	}
	public List<Grades> getAllGrade() {
		return employeeMapper.getAllGrade();
	}
	
	public void saveEmployee(EmployeeRegisterForm form) {
		Employees employees = new Employees();
		BeanUtils.copyProperties(form, employees);
		
		employeeMapper.insertEmployees(employees);
	}
	
}
