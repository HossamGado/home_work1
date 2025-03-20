void main(){
  print(haveDuplicate([2,1,3,2,1]));
  print(haveDuplicate([1,3,2,4]));
}
bool haveDuplicate(List<int>nums){
  List<int>seen=[];
  for(int num in nums){
    if(seen.contains(num)){
      return true;
    }
    seen.add(num);
  }
  return false;
}
