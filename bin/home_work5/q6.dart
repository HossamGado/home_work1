int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.isEmpty || words[0].isEmpty ? 0 : words.length;
}

void main() {
  print(countWords("i am a software engineer"));

}
