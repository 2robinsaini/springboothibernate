package rob.in.dao;

import java.util.List;

import rob.in.model.Address;
import rob.in.model.Student;

public interface StudentDao {
	public List<Student> getAllStudents();

	public Address getAddressFromAddId(String addId);

	public void addStudent(Student student);

	public void updateAddress(Address address);
}
