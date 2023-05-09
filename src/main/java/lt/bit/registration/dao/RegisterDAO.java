package lt.bit.registration.dao;

import lt.bit.registration.data.Form;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RegisterDAO extends JpaRepository<Form, Integer> {

}
