 package tech.atul.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import tech.atul.portfolio.entities.AppUser;
import tech.atul.portfolio.service.UserService;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    // ---------------- LOGIN ----------------
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    // ---------------- REGISTER ----------------
    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@RequestParam String username,
                               @RequestParam String email,
                               @RequestParam String password,
                               @RequestParam String confirmPassword,
                               @RequestParam String role,
                               Model model) {

        AppUser user = new AppUser();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);

        String result = userService.registerUser(user, confirmPassword);

        if ("SUCCESS".equals(result)) {
            model.addAttribute("success", "Registration successful! Please login.");
            return "login";
        } else {
            model.addAttribute("error", result);
            return "register";
        }
    }

 // ---------------- FORGOT PASSWORD ----------------
    @GetMapping("/forgot-password")
    public String forgotPasswordPage() {
        return "forgot-password"; // Returns forgot-password.jsp
    }

    @PostMapping("/forgot-password")
    public String handleForgotPassword(@RequestParam String email, Model model) {
        if (!userService.checkEmailExists(email)) {
            model.addAttribute("error", "Email not found!");
            return "forgot-password";
        }
        // Encode email to handle special characters
        String encodedEmail = URLEncoder.encode(email, StandardCharsets.UTF_8);
        return "redirect:/reset-password?email=" + encodedEmail;
    }


    // ---------------- RESET PASSWORD ----------------
    @GetMapping("/reset-password")
    public String resetPasswordPage(@RequestParam String email, Model model) {
        model.addAttribute("email", email);
        return "reset-password";
    }

    @PostMapping("/reset-password")
    public String handleResetPassword(@RequestParam String email,
                                      @RequestParam String newPassword,
                                      @RequestParam String confirmPassword,
                                      Model model) {

        if (!newPassword.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match!");
            model.addAttribute("email", email);
            return "reset-password";
        }

        boolean updated = userService.resetPassword(email, newPassword);
        if (updated) {
            model.addAttribute("success", "Password reset successful! Please login.");
            return "login"; // ✅ user sees login page
        } else {
            model.addAttribute("error", "Email not found!");
            model.addAttribute("email", email);
            return "reset-password";
        }
    }

    }

