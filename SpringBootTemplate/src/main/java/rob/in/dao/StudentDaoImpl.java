package rob.in.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import rob.in.model.Address;
import rob.in.model.Student;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	private SessionFactory sessionFactory;

	private static Session session = null;

	@Override
	public List<Student> getAllStudents() {
		session = getSession();
		return session.createCriteria(Student.class).list();
	}

	private Session getSession() {
		if (session != null)
			return session;
		else
			return sessionFactory.openSession();
	}

	@Override
	public Address getAddressFromAddId(String addId) {
		session = getSession();
		Criteria crit = session.createCriteria(Address.class);
		Long addIdLong = Long.parseLong(addId);
		crit.add(Restrictions.eq("id", addIdLong));
		List<Address> results = crit.list();
		return results.get(0);
	}

	@Override
	public void addStudent(Student student) {
		session = getSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.save(student);
	        tx.commit(); // Flush happens automatically
	    }
	    catch (RuntimeException e) {
	        tx.rollback();
	        throw e; // or display error message
	    }
	    finally {
	        session.close();
	        session=null;
	    }
	}

	@Override
	public void updateAddress(Address address) {
		session = getSession();
	    Transaction tx = null;
	    try {
	        tx = session.beginTransaction();
	        session.merge(address);
	        tx.commit(); // Flush happens automatically
	    }
	    catch (RuntimeException e) {
	        tx.rollback();
	        throw e; // or display error message
	    }
	    finally {
	        session.close();
	        session=null;
	    }
	}

}
