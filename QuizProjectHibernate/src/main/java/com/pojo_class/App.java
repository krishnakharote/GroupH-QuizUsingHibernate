package com.pojo_class;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class App {

	public static Session getsession() {
		int count=0;

		Configuration con = new Configuration();
		con = con.configure("Hibernate.cfg.xml");
		SessionFactory factory = con.buildSessionFactory();
		Session session = factory.openSession();
		
		return session;
	}
}
