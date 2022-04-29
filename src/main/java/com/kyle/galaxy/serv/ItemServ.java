package com.kyle.galaxy.serv;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyle.galaxy.models.Item;
import com.kyle.galaxy.repos.ItemRepo;

@Service
public class ItemServ {
	
	@Autowired
	private ItemRepo itemRepo;
	
	public List<Item> allItems(){
		return itemRepo.findAll();
	}
	
	public Item findItem(Long id) {
		Optional<Item> optionalItem = itemRepo.findById(id);
		if(optionalItem.isPresent()) {
			return optionalItem.get();
		} else {
			return null;
		}
	}
}
