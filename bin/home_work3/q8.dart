// Write a Dart program that checks if a number is within a specified range using logical operators and
// prints the result.

import 'dart:io';

void main(){

  int val1=10;
  int val2=20;
  print("please enter number");
  int number=int.parse(stdin.readLineSync()!);
  if(number>=10&&number<=20){
    print("$number int the range between $val1 ,$val2 ");
  }else{
    print("$number int not in the range between $val1 ,$val2 ");
  }
}