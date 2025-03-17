// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
// displaying items. Use functions with return types and optional/named parameters. Make sure to
// handle possible null values.

void main(){
  List<String>grocery=[];
  grocery.add(addItem("banana"));
  grocery.add(addItem("watermelon"));
  grocery.add(addItem("apple"));
  displayGrocery(grocery);
  if(grocery.isEmpty){
    print("the grocery is empty");
  }
  grocery.remove(removeItem("apple"));
displayGrocery(grocery);
}

String addItem(String item){
return item;
}
String removeItem(String item){
  return item;
}
void displayGrocery(List<String>grocery){
  print(grocery);
}
