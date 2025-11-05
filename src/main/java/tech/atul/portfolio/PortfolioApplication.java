 package tech.atul.portfolio;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.security.crypto.password.PasswordEncoder;

import tech.atul.portfolio.entities.AppUser;
import tech.atul.portfolio.repositories.UserRepository;

@SpringBootApplication
public class PortfolioApplication {

    private final UserRepository userRepository;

    // ✅ Constructor name must match the class
    public PortfolioApplication(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public static void main(String[] args) {
        // ✅ Must run PortfolioApplication.class
        ConfigurableApplicationContext ctx = SpringApplication.run(PortfolioApplication.class, args);
        UserRepository userRepo = ctx.getBean(UserRepository.class);
        PasswordEncoder encoder = ctx.getBean(PasswordEncoder.class);

//        // Insert default admin if missing
//        if (userRepo.findByUsername("admin").isEmpty()) {
//            AppUser admin = new AppUser();
//            admin.setUsername("admin");
//            admin.setPassword(encoder.encode("admin123")); // BCrypt encoded
//            admin.setRole("ROLE_ADMIN");
//            userRepo.save(admin);
//            System.out.println("✅ Admin inserted");
//        } else {
//            System.out.println("ℹ️ Admin already exists");
//        }
//
//        // Insert default member if missing
//        if (userRepo.findByUsername("member").isEmpty()) {
//            AppUser member = new AppUser();
//            member.setUsername("member");
//            member.setPassword(encoder.encode("member123")); // BCrypt encoded
//            member.setRole("ROLE_MEMBER");
//            userRepo.save(member);
//            System.out.println("✅ Member inserted");
//        } else {
//            System.out.println("ℹ️ Member already exists");
//        }
   }
       
}
