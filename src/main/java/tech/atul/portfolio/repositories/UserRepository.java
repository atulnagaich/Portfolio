package tech.atul.portfolio.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tech.atul.portfolio.entities.AppUser;

@Repository
public interface UserRepository extends JpaRepository<AppUser, Long> {
	
	
	 Optional<AppUser> findByUsername(String Username);
	 Optional<AppUser> findByEmail(String email);
	 

}
