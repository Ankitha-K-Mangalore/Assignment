package com.example.demo.repository;

import com.example.demo.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

// JpaRepository provides methods like save(), findAll(), findById(), deleteById(), etc.
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
}
