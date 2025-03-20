// Create a class `Person` with the following attributes:
// - `String name`
// - `int? age` (nullable)
// - `bool isStudent` (default is false)
// Implement:
// - A constructor that initializes `name` and `age`.
// - A method `displayInfo()` that prints the person's details.
// In `main()`, create an instance of `Person` and call `displayInfo()`.

class Person{
  String name;
  int?age;
  bool isStudent;

  Person({required this.name,required this.age,this.isStudent=false});
  void displayInfo(){
    print("Name is : $name");
    print("Age is : $age");
    print("isStudent : $isStudent");
  }
}
void main(){
  Person p1=Person(name: "hossam", age: 30);
  p1.displayInfo();
}