package rob.in.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rob.in.dao.StudentDao;
import rob.in.model.Address;
import rob.in.model.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao stdDao;
	
	@Override
	public List<Student> getAllStudents() {
		return stdDao.getAllStudents();
	}

	@Override
	public Address getAddressFromAddId(String addId) {
		return stdDao.getAddressFromAddId(addId);
	}

	@Override
	public void addStudent(Student student, Address address) {
		stdDao.addStudent(student,address);
	}

	@Override
	public void updateAddress(Address address) {
		stdDao.updateAddress(address);
	}

}
