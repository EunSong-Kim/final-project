package com.last.dto;


import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("VacationCalculateDto")
@Getter
@Setter
public class VacationCalculateDto {
	private int empNo;
	private int year;
	private String empName;
	private String positionName;
	private String deptName;
	private String hireDate;
	private String baseDate;
	private int workedYears;
	private int vacationDays;
	private int usedDays;
	private int remainedDays;

}
