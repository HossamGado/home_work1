// Write a function `uniqueNames(List<String> names)` that:
// - Accepts a list of names.
// - Returns a Set containing only unique names.
// Call the function inside `main()` and print the result.

void main(){
 List<String>names=(["hossam","gado","tharwat","hossam","mahmoud","tharwat","gado",]);
  print("${uniqueNames(names)}");
}
Set<String> uniqueNames(List<String>names){
  return names.toSet();
}