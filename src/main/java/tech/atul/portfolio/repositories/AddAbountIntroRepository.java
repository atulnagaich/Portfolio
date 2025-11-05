package tech.atul.portfolio.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tech.atul.portfolio.entities.AddAboutEntity;

@Repository
public interface AddAbountIntroRepository extends JpaRepository<AddAboutEntity, Integer> {
	
}

