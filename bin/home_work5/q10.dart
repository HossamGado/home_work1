class Employee {
  String name;
  int id;
  double salary;

  Employee({required this.name, required this.id, required this.salary});

  double calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee({
    required String name,
    required int id,
    required double salary,
    this.bonus = 0.0,
  }) : super(name: name, id: id, salary: salary);

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee({
    required String name,
    required int id,
    required this.hourlyRate,
    required this.hoursWorked,
  }) : super(name: name, id: id, salary: 0.0);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  FullTimeEmployee fullTime = FullTimeEmployee(name: 'Alice', id: 101, salary: 5000, bonus: 500);
  PartTimeEmployee partTime = PartTimeEmployee(name: 'Bob', id: 102, hourlyRate: 20, hoursWorked: 80);

  print('${fullTime.name} earns \$${fullTime.calculateSalary()}');
  print('${partTime.name} earns \$${partTime.calculateSalary()}');
}

// المثال دا واللي قبله انا جبتهم نصا من chat gpt لاني كنت مرهق جدا ومكنتش اعرف ان علينا home work
