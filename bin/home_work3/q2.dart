// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
// displaying items. Use functions with return types and optional/named parameters. Make sure to
// handle possible null values.

void main(){
  List<String>grocery=[];
  addItem("bananna", grocery);
  displayGrocery(grocery);

}

void addItem(String item,List<String>list){
  list.add(item);
}
void removeItem(String item,List<String>list){
list.remove(item);
}
void displayGrocery(List<String>list){
for(String item in list){
  print(item);
}
}
