void main() {
  print(isPalindrome("A man, a plan, a canal, Panama"));
}
bool isPalindrome(String sentence){
  String newSentence=sentence.toLowerCase().trim().replaceAll(RegExp(r"[^a-zA-Z]"), "");
  String reverse=newSentence.split("").reversed.join();
  if(reverse==newSentence){
    return true;
  }
  return false;
}
















































//bool isPalindrome(String sentence) {
//   var newSentence =
//       sentence.toLowerCase().trim().replaceAll(RegExp(r'[^a-zA-Z]'), '');
//   print(newSentence);
//   String reversedSentence = newSentence.split("").reversed.join();
//   print(reversedSentence);
//   if (newSentence == reversedSentence) {
//     return true;
//   }
//   return false;
// }