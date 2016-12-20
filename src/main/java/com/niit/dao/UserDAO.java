package com.niit.dao;

import java.util.List;
import com.niit.entities.User;

public interface UserDAO {

	void addUser(User user);

	public void update(User usr, int id);

	public void delete(int id);

	public User getUserById(int id);

	public List<User> getUsers();
}
