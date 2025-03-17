// Create a Dart program that takes two numbers as input and performs addition, subtraction,
// multiplication, and division using variables, arithmetic operators, and functions. Also, include
// optional parameters for different operations (e.g., addition of multiple numbers)



import 'dart:io';

void main(){
  print("enter first number");
  int num1=int.parse(stdin.readLineSync()!);
  print("enter second number");
  int num2=int.parse(stdin.readLineSync()!);
  addition(num1, 1);
  subtraction(num1, num2);
  multiplication(num1, 6);
  division(num1, num2);

}
void addition(num1,[num2]){
  int sum=num1+num2;
  print("sum is $sum");
}
void subtraction(num1,num2){
  int sub=num1-num2;
  print("sub is $sub");
}
void multiplication(num1,[num2]){
  int multi=num1*num2;
  print("multi is $multi");
}
void division(num1,[num2]){
  num divide=num1/num2;
  print("divide is $divide");
}




// void twoNumbers(int num1, [int num2=1]){
//   int sum=num1+num2;
//   int sub=num1-num2;
//   int multi=num1*num2;
//   double divide=num1/num2;
//   print(sum);
//   print(sub);
//   print(multi);
//   print(divide);
// }
