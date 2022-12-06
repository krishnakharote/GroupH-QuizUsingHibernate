package com.demo;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.pojo_class.App;

public class Question {
	int count=0;
	String grade;

	
	public static void getqst() {
		int count=0;

		Session session = App.getsession();
		Query qst = session.createQuery("Select Question from Quiz");
		Query ans = session.createQuery("Select Answer from Quiz");
		List list1 = qst.list();
		List list = ans.list();
		
		HashMap<Object, Object> map=new HashMap();
		for(int i=0; i<list1.size(); i++) {
			map.put(list1.get(i), list.get(i));	
		}
		
		Set<Object> set = map.keySet();
		Iterator<Object> itr = set.iterator();
		System.out.println();
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter your Name;");
		String name = sc.next();
		
		while(itr.hasNext()) {
			Object i=itr.next();
			System.out.println();
			System.out.println(i);
			
			System.out.println("Enter your answer");
			String a = sc.next();
			
			if(a.equals(map.get(i))) {
				count++;
			}
			System.out.println("");	
			
		}
		
		
		String grade;
		if(count>=8) {
			grade="A";
		}else if(count>5 && count<8) {
			 grade="B";
		}else if(count==5) {
			 grade="C";
		}else {
			 grade="D";
		}
		
		int marks=count;
		
		System.out.println("Marks:"+count);
		System.out.println("Grade: "+grade );
		
		Answer.instertable(name, grade, marks);	
	}
	
	

	
	
	}
	
	

