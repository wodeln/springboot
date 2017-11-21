package com.bolean.dao;

import com.bolean.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserDao extends JpaRepository<User,Long> {
//    public List<User> findByName(String name);
//    public User findOne(Long userId);
    public User findAllByUserId(int userId);
    
//    public List<User> findUsersBy
}
