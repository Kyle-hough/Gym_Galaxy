package com.kyle.galaxy.models;

import java.util.ArrayList;

public class Cart {

	private ArrayList<Item> items = new ArrayList<Item>();
	
	public Cart() {}
	
	public ArrayList<Item> getItems() {
		return items;
	}
	
	public void setItems (ArrayList<Item> items) {
		this.items = items;
	}
}
