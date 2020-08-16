package rob.in.service;

import java.util.List;

import rob.in.model.Address;
import rob.in.model.Student;

public interface StudentService {

	public List<Student> getAllStudents();

	public Address getAddressFromAddId(String addId);

	public void addStudent(Student student, Address address);

	public void updateAddress(Address address);
	
}
