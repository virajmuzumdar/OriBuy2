package com.niit.dao;


import java.util.List;

import com.niit.entities.Product;

public interface ProductDAO {

	void addProduct(Product pro);

	public void update(Product pro, String id);

	public void delete(String id);

	public Product getProdById(String id);

	public List<Product> getProducts();
}
