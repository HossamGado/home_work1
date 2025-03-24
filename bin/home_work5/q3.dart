void main(){
 print(calculateLeapyear(2021));
print(isLeapYear(2021));
}

String calculateLeapyear(int year){
  if((year%4==0&&year%100!=0)||(year%400==0)){
    return "leap tear";
  }
  return("not leap year");
}


//another solution
bool isLeapYear(int year){
  if((year%4==0&&year%100!=0)||(year%400==0)){
    return true;
  }
  return false;
}