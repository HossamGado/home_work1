bool isPrime(int num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void main(){
 print(calculatePrime(10, 50));
}

List<int>calculatePrime(int start,int end){
  if(start>end){
    print("start must be less than end");
    return[];
  }
  List<int>primes=[];
    for(int i =start;i<=end;i++){
      if(isPrime(i)){
        primes.add(i);
      }
    }
  return primes;
}


