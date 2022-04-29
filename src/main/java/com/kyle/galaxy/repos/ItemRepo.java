package com.kyle.galaxy.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.kyle.galaxy.models.Item;

@Repository
public interface ItemRepo extends CrudRepository<Item, Long> {
	List<Item> findAll();
}
