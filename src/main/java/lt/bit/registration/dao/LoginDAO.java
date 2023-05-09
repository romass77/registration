package lt.bit.registration.dao;

import lt.bit.registration.data.Form;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoginDAO extends JpaRepository<Form, Integer> {

}
