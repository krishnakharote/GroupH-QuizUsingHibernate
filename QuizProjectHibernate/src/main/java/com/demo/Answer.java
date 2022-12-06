package com.demo;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.pojo_class.App;
import com.pojo_class.Outcome;

public class Answer {
	
	public static void instertable(String name, String grade, int marks) {
		
		Session session = App.getsession();
		Transaction tran = session.beginTransaction();
		
		Outcome o=new Outcome();
		o.setName(name);
		o.setGrade(grade);
		o.setMarks(marks);
		Serializable id = session.save(o);
		System.out.println("Please remember your ID: "+id);
		
		tran.commit();
	
	}
	
	
	public static void showResult()
	{
		Session session = App.getsession();
		Transaction tran = session.beginTransaction();
		
		Query outcome = session.createQuery("From Outcome");
		List<Object> list = outcome.list();
		for(Object o: list) {
			System.out.println(o);
		}
		tran.commit();
	}
	
	
	public static void getParticularResult(int id) {
		
		Session session = App.getsession();
		Transaction tran = session.beginTransaction();
		Outcome result = session.get(Outcome.class, id);
		System.out.println();
		System.out.println(result);
	
		
		tran.commit();
	}
	
	
}
