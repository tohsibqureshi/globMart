package com.example.demo;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
	@Autowired
	CategoryRepository categoryRepository;

	public List<Category> CategoryList(String name) {
		List<Category> items = new ArrayList<Category>();
		categoryRepository.findAll().forEach(items::add);

		List<Category> cate = new ArrayList<Category>();

		for (Category item : items) {
			if (item.getTypeOfProduct().equals(name)) {
				cate.add(item);
			}
		}

		return cate;
	}

	public void addRecord(Category category) {
		categoryRepository.save(category);
	}

	public List<Category> list() {
		List<Category> items = new ArrayList<Category>();
		categoryRepository.findAll().forEach(items::add);
		return items;
	}

	public Category getItem(String name) {

		for (Category record : list()) {
			if (record.getName().equals(name)) {
				return record;
			}
		}

		return null;
	}

	public void addToCart(String name) {

		for (Category record : list()) {
			if (record.getName().equals(name)) {
				record.setActive(false);
				categoryRepository.save(record);
			}
		}

	}

	public void removeFromCart(String name) {

		for (Category record : list()) {
			if (record.getName().equals(name)) {
				record.setActive(true);
				categoryRepository.save(record);
			}
		}

	}

	public List<Category> getCartlist() {
		List<Category> items = new ArrayList<Category>();
		for (Category record : list()) {
			if (!record.isActive()) {

				items.add(record);
			}
		}

		return items;
	}

	public Double getCartTotal() {

		double total = 0;
		for (Category record : getCartlist()) {

			total = total + record.getPrice();
		}

		return total;
	}

	public Set<String> getOnlyCategory() {

		Set<String> cate = new HashSet();

		for (Category record : list()) {

			cate.add(record.getTypeOfProduct());
		}
		System.out.println(cate);
		return cate;
	}

}
