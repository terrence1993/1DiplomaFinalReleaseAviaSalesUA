package com.gmail.zork93.Implementation;

import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.Repositories.UserRepository;
import com.gmail.zork93.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional(readOnly = true)
    public CustomUser getUserByLogin(String login) {
        return userRepository.findByLogin(login);
    }

    @Override
    @Transactional(readOnly = true)
    public boolean existsByLogin(String login) {
        return userRepository.existsByLogin(login);
    }

    @Override
    @Transactional
    public void addUser(CustomUser customUser) {
        userRepository.save(customUser);
    }

    @Override
    @Transactional
    public void updateUser(CustomUser customUser) {
        userRepository.save(customUser);
    }

    @Override
    @Transactional
    public void delete(long id){
        userRepository.delete(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<CustomUser> getAll() {
        return userRepository.findAll();
    }
}
