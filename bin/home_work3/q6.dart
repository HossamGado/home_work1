// Create a map representing a student with keys for name, age, and grade. Add, update,
// and remove entries from the map, printing the map after each operation.
//Iterate over the map and print each key-value pair.


void main(){
  Map<String,dynamic>studentData={
   "name":"hossam",
   "age":22,
   "grade":"B",
  };
  print(studentData);
  studentData["height"]=170;
  print("after adding height:$studentData");

  studentData["grade"]="A";
  print("after updating grade:$studentData");

  studentData.remove("age");
  print("after removing age:$studentData");

  studentData.forEach((key,value){
    print("$key,$value");
  });

}
