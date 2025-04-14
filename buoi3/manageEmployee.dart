abstract class Employee {
  int id;
  String name;
  double salary;

  Employee(this.id, this.name, this.salary);

  void printInfo() {
    print("id: $id");
    print("name: $name");
    print("salary: $salary");
  }

  double calculateSalary() => salary;
}

//khai báo interface
abstract class Workable {
  void doWork();
}

//lớp OfficeWorker
class OfficeWorker extends Employee implements Workable {
  String department;

  OfficeWorker(int id, String name, double salary, this.department)
    : super(id, name, salary);

  @override
  void doWork() {
    print("$name đang làm việc tại phòng ban: $department");
  }

  @override
  void printInfo() {
    super.printInfo();
    print("department: $department");
  }
}

//lop TechWorker
class TechWorker extends Employee implements Workable {
  TechWorker(int id, String name, double salary, this.field)
    : super(id, name, salary);

  String field;

  @override
  void doWork() {
    print("$name đang làm việc trong lĩnh vực $field");
  }

  @override
  void printInfo() {
    super.printInfo();
    print("field: $field");
  }
}

class Company {
  List<Employee> employees = [];

  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void printAllEmployees() {
    print("----------------danh sách--------------");
    for (var element in employees) {
      element.printInfo();
      print("-------------------------------------");
    }
  }

  double getTotalSalary() {
    double total = 0;

    for (var element in employees) {
      total += element.calculateSalary();
    }
    return total;
  }
}

void main(List<String> args) {
  var company = Company();

  var nv1 = OfficeWorker(01, "Huy", 3000.0, "Ui Ux");
  var nv2 = TechWorker(02, "Trung", 50000.0, "AI");

  company.addEmployee(nv1);
  company.addEmployee(nv2);

  company.printAllEmployees();

  print("Tổng lương công ty: ${company.getTotalSalary()}");
}
