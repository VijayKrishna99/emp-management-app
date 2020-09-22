package web.empmanagementapp.dao;

import java.util.List;

import web.empmanagementapp.Model.Employee;

public interface PersonDAO {

		public void addEmployee(Employee p);
		public void updateEmployee(Employee p);
		public List<Employee> listEmployees();
		public Employee getEmployeeById(int id);
		public void removeEmployee(int id);
}
