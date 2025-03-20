// Create a list of numbers. Iterate over the list and:
// - If a number is even, print "Even: <number>".
// - If a number is odd, print "Odd: <number>".

void main(){
  List<int>numbers=[2,5,6,9,8,10];
  for(var number in numbers){
    if(number%2==0){
      print("Even:<$number>");
    }else{
      print("Odd:<$number>");
    }
  }
}