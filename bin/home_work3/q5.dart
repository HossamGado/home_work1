// Create a class with a few properties and methods. Instantiate the class and use the dot operator to
// access and print its properties and methods.

void main(){
  Person p1=Person();
  p1.name="hossam";
  p1.age=22;
  p1.height="170";
  p1.displayAge();
}

class Person{
  String? name;
  int? age;
  String? height;



  void displayName(){
    print(name);
  }
  void displayAge(){
    print(age);
  }
  void displayHeight(){
    print(height);
  }
}
