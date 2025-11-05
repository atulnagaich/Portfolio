package tech.atul.portfolio.service;

import java.util.List;
import java.util.Optional;

import tech.atul.portfolio.dto.AddAboutDto;
import tech.atul.portfolio.entities.AddAboutEntity;

public interface AddAbountIntro {

	AddAboutEntity saveAbountIntro(AddAboutDto addAboutDto);

	List<AddAboutEntity> readAboutIntro();
	 Optional<AddAboutEntity> readAboutIntroId(int id); 
	 AddAboutEntity updateAboutIntro(AddAboutEntity intro);
	 void deleteAbountIntroId(int id);


}
