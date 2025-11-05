 package tech.atul.portfolio.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import tech.atul.portfolio.entities.AppUser;
import tech.atul.portfolio.repositories.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    // ---------------- REGISTER ----------------
    public String registerUser(AppUser user, String confirmPassword) {
        if (!user.getPassword().equals(confirmPassword)) {
            return "Passwords do not match";
        }
        if (userRepository.findByUsername(user.getUsername()).isPresent()) {
            return "Username already exists";
        }
        if (userRepository.findByEmail(user.getEmail()).isPresent()) {
            return "Email already exists";
        }

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return "SUCCESS";
    }

    // ---------------- EMAIL CHECK ----------------
    public boolean checkEmailExists(String email) {
        return userRepository.findByEmail(email).isPresent();
    }

    // ---------------- RESET PASSWORD ----------------
    public boolean resetPassword(String email, String newPassword) {
        Optional<AppUser> optionalUser = userRepository.findByEmail(email);
        if (optionalUser.isPresent()) {
            AppUser user = optionalUser.get();
            user.setPassword(passwordEncoder.encode(newPassword));
            userRepository.save(user);
            return true;
        }
        return false;
    }
}
