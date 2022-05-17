package com.example.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddressService {
@Autowired
AddressRepository addressRepository;
	public void addAddress(User address) {
		addressRepository.save(address);
	}
	public List<User> getUsers() {
		List<User> userList = new ArrayList<User>();
		addressRepository.findAll().forEach(userList::add);
		return userList;
		
	}
	public String sendMail(String subject, String mailBody) {
		
		for (User u : getUsers()) {
			
			Mailer.send(u.getEmail(), mailBody, subject);
			
		}
		
		return "success";
	}
	public String sendingMail(String subject, String mailBody) {
		
for (User u : getUsers()) {
			
			Mailer.send(u.getEmail(), mailBody, subject);
			
		}
		
		return "success";
	}

	
}
