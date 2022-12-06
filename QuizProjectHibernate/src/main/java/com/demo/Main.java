package com.demo;

import com.pojo_class.*;

import java.util.Scanner;

public class Main {

	public static void overview() {

		Scanner sc = new Scanner(System.in);
		System.out.println("Please choose from below");
		System.out.println("1. To start Quiz");
		System.out.println("2. To get your Result");
		System.out.println("3. To Show Merit List");
		System.out.println("4. To Exit");

		int i = sc.nextInt();

		if (i == 1) {
			Question.getqst();
		} else if (i == 3) {
			Answer.showResult();
		} else if (i == 2) {
			System.out.println();
			System.out.println("Please enter your ID");
			int id = sc.nextInt();

			Answer.getParticularResult(id);
		} else if (i == 4) {
			System.out.println("Thank You.");
		} else {
			throw new InvalidInput("You have Entered Invalid Input. ");
			
		}

	}

	public static void main(String[] args) {

		Main.overview();

	}

}
