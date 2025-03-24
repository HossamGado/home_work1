void main(){
print(calculateLongest("my name is hossam"));
}
String calculateLongest(String sentence){
  List<String> words = sentence.split(RegExp(r'\s+'));
  String longest='';
  for(String word in words){
    if(word.length>longest.length){
      longest=word;
    }
  }
  return longest;
}