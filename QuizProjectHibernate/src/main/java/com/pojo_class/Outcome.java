package com.pojo_class;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Outcome {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "Student_Id")
	@SequenceGenerator(sequenceName = "Student_Id", initialValue = 100, allocationSize = 1,name = "Student_Id")
	private int Id;
	private String Name;
	private int Marks;
	private String Grade;
	@Override
	public String toString() {
		return "Id=" + Id+ " Grade=" + Grade + " Marks=" + Marks +  " Name=" + Name + "";
	}
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getMarks() {
		return Marks;
	}
	public void setMarks(int marks) {
		Marks = marks;
	}
	public String getGrade() {
		return Grade;
	}
	public void setGrade(String grade) {
		Grade = grade;
	}
	
	
	
	
}
