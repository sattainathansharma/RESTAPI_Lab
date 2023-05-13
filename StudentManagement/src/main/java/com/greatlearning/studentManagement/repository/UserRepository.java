package com.greatlearning.studentManagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.greatlearning.studentManagement.entity.User;

public interface UserRepository extends JpaRepository<User,Long> {
	
	@Query("select u from User u where u.username = ?1")
	
	public User getUserByUsername(String username);

}
