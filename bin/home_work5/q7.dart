void main(){
print(reverseString("hossam"));
}
String reverseString(String word){
  return word.split('').reversed.join('');
}