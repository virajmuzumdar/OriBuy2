package com.niit.dao;


import java.util.List;

import com.niit.entities.Product;

public interface ProductDAO {

	void addProduct(Product pro);

	public void update(Product pro, int id);

	public void delete(int id);

	public Product getProdById(int id);

	public List<Product> getProducts();
}
