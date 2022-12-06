package com.pojo_class;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Quiz {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
 private String Question;
 private String Answer;
 
 
public String getQuestion() {
	return Question;
}
public void setQuestion(String question) {
	Question = question;
}
public String getAnswer() {
	return Answer;
}
public void setAnswer(String answer) {
	Answer = answer;
}


@Override
public String toString() {
	return "Quiz [Question=" + Question + ", Answer=" + Answer + "]";
}

 
 
}
