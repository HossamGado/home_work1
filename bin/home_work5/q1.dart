
void main(){
  print(calculate(3,7,"*"));
}

double? calculate(double num1,double num2, String operator){
  switch(operator){
    case "+":
      return num1 + num2;
    case"-":
      return num1-num2;
    case"*":
      return num1*num2;
    case"/":
      if(num2==0){
        print("can't divide by zero");
      }
      return num1/num2;
    default:
      print("invalid operator");
    return null;
  }
}