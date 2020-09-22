package web.empmanagementapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import web.empmanagementapp.Model.Employee;

@Repository
public class EmployeeDAOImpl implements PersonDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	public SessionFactory getSessionfactory() {
		return sessionFactory;
	}

	public void setSessionfactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		this.template.setSessionFactory(this.getSessionfactory());
	}
	
	
	public void addEmployee(Employee p) {
		Session session = this.sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(p);
		t.commit();
		session.close();
	}
	
	
	public void updateEmployee(Employee p) {
		Session session = this.sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		session.saveOrUpdate(p);
		t.commit();
		session.close();
		
	}

	@SuppressWarnings("unchecked")
	public List<Employee> listEmployees() {
		Session session = this.sessionFactory.openSession();
		List<Employee> emplist = session.createQuery("from Employee").list();
		return emplist;
	}

	public Employee getEmployeeById(int id) {
		Session session = this.sessionFactory.openSession();
		Employee e =(Employee) session.get(Employee.class, id);
		return e;
	}

	
	public void removeEmployee(int id) {
		Session session = this.sessionFactory.openSession();
		Transaction t = session.beginTransaction();
		Employee e =(Employee) session.load(Employee.class, id);
		if(null!= e)
			session.delete(e);
		t.commit();
		session.close();
	}
	
}
