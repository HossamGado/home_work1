void main(){
print(sumList([1,2,3,4,5,6]));
}
int sumList(List<int>numbers){
  return numbers.fold(0, (sum,num){
    return sum+num;
  });
}