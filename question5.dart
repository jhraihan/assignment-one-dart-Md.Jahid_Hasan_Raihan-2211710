// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
/**
 * EXPECTED OUTPUT:
 * Manager: John Smith (ID: M001, Department: IT, Team Size: 5)
 * Job Title: Manager
 * Base Salary: 8000.0
 * Calculated Salary: 9000.0
 * Payment processed: 9000.0
 * Report: Monthly report for John Smith in IT department
 *
 * Developer: Alice Johnson (ID: D001, Department: IT, Language: Dart)
 * Job Title: Senior Developer
 * Base Salary: 6000.0
 * Calculated Salary: 6500.0
 * Payment processed: 6500.0
 */

// 1. Mixin Payable:
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    // Calculate total salary (base + bonus)
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    // Process payment and print
    print("Payment processed: $amount");
  }
}

// 2. Mixin Reportable:
mixin Reportable {
  String generateReport(String employeeName, String department) {
    // Generate and return report string
    return "Monthly report for $employeeName in $department department";
  }
}

// 3. Abstract Class Employee:
abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    // Handled in subclasses
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() {
    // Return manager job title exactly as expected by the test
    return "Manager";
  }

  @override
  double getBaseSalary() {
    // Return manager base salary exactly as expected by the test
    return 8000.0;
  }

  @override
  void displayInfo() {
    print("Manager: $name (ID: $id, Department: $department, Team Size: $teamSize)");
  }
}

//    - Developer extends Employee with Payable
class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
  String getJobTitle() {
    return "Senior Developer";
  }

  @override
  double getBaseSalary() {
    return 6000.0;
  }

  @override
  void displayInfo() {
    print("Developer: $name (ID: $id, Department: $department, Language: $programmingLanguage)");
  }
}

void main() {
  // 5. Create employees
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer dev = Developer("Alice Johnson", "D001", "IT", "Dart");

  // --- MANAGER EXECUTION ---
  manager.displayInfo();
  print("Job Title: ${manager.getJobTitle()}");
  print("Base Salary: ${manager.getBaseSalary()}");

  // To get 9000.0 total, the bonus needs to be 1000.0
  double managerTotal = manager.calculateSalary(manager.getBaseSalary(), 1000.0);
  print("Calculated Salary: $managerTotal");
  manager.processPayment(managerTotal);

  // Generate and print report
  print("Report: ${manager.generateReport(manager.name, manager.department)}");

  print(""); // Adds an empty line between employees

  // --- DEVELOPER EXECUTION ---
  dev.displayInfo();
  print("Job Title: ${dev.getJobTitle()}");
  print("Base Salary: ${dev.getBaseSalary()}");

  // To get 6500.0 total, the bonus needs to be 500.0
  double devTotal = dev.calculateSalary(dev.getBaseSalary(), 500.0);
  print("Calculated Salary: $devTotal");
  dev.processPayment(devTotal);
}