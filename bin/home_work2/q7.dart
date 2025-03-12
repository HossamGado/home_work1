// - Create an integer variable marks.
// - If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.

import 'dart:io';
void main(){
  print("please enter youe marks");
  int marks=int.parse(stdin.readLineSync()!);
  if(marks>=70){
    print("Passed");
  }else{
    print("failed");
  }
}