 package tech.atul.portfolio.service;

import java.util.List;
import java.util.Optional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tech.atul.portfolio.dto.AddAboutDto;
import tech.atul.portfolio.entities.AddAboutEntity;
import tech.atul.portfolio.repositories.AddAbountIntroRepository;

@Service
public class AddAbountIntroImpl implements AddAbountIntro {

    @Autowired
    private AddAbountIntroRepository addAbountIntroRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public AddAboutEntity saveAbountIntro(AddAboutDto addAboutDto) {
        // Convert DTO to Entity
        AddAboutEntity about = modelMapper.map(addAboutDto, AddAboutEntity.class);

        // Save entity in 
        return addAbountIntroRepository.save(about);
    }

	@Override
	public List<AddAboutEntity> readAboutIntro() {
		 
		return addAbountIntroRepository.findAll();
	}

	@Override
	public Optional<AddAboutEntity> readAboutIntroId(int id) {
		// TODO Auto-generated method stub
		return addAbountIntroRepository.findById(id);
	}

	 @Override
	    public AddAboutEntity updateAboutIntro(AddAboutEntity intro) {
	        return addAbountIntroRepository.save(intro);  
}

	 @Override
	 public void deleteAbountIntroId(int id) {
		 
		 addAbountIntroRepository.deleteById(id);
	 }
}
