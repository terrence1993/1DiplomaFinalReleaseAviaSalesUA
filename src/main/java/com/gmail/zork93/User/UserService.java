package com.gmail.zork93.User;

import com.gmail.zork93.Entities.CustomUser;

import java.util.List;

public interface UserService {
    CustomUser getUserByLogin(String login);
    boolean existsByLogin(String login);
    void addUser(CustomUser customUser);
    void updateUser(CustomUser customUser);
    void delete (long id);
    List<CustomUser> getAll();
}
