package web.empmanagementapp.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="employee")
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(updatable=false, nullable=false)
	private Integer id;
	
	@NotEmpty(message="name can't be empty")
	@Size(min=3, max=20, message="name should be between 3 to 20 characters")
	@Pattern(regexp="[^0-9]+")
	@Column(name="name")
	private String name;
	
	
	@Email(message="enter a valid email address")
	@Column(name="email")
	private String email;
	
	@Size(min=10, max=10, message="enter 10 digit number")
	@NotEmpty(message="phone no can't be empty")
	@Column(name="phoneno")
	private String phoneno;
	

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	@Override
	public String toString() {
		return "["+this.id+", "+this.name+", "+this.email+", "+this.phoneno+"]\n";
		
	}
}
