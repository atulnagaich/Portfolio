package tech.atul.portfolio.service;

 
import java.util.List;

import tech.atul.portfolio.dto.ContactDto;
import tech.atul.portfolio.entities.ContactEntity;

public interface ContactService {
	
	ContactEntity saveContact(ContactDto contactDto);
	boolean isContactEmailExist(String email);
	List<ContactEntity> readAllContacts();
	void deleteContactById(int id);

}
