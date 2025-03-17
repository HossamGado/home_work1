// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops.

import 'dart:io';

class Task{
  String?description;
  String?date;
  bool?isCompleted;
  Task(this.description,this.date, {this.isCompleted=false});
}

class ToDoList{
  List<Task>tasks=[];

  void addtasks(String description,String date){
    tasks.add(Task(description, date));
    print("task add successfully");
  }

  void removeTask(int index){
    if(tasks.isEmpty){
      print("there are no tasks for deleting ");
    }else{
      tasks.removeAt(index);
      print("task removed");
    }
  }
  void updatetask(int index,bool isCompleted){
    if(tasks.isEmpty){
      print("there are no tasks for updating");
    }else{
      tasks[index].isCompleted=isCompleted;
      print("task update successfully");
    }
  }
  void displayTasks(){
    if(tasks.isEmpty){
      print("there are no tasks in list");
    }else{
      tasks.asMap().forEach((index,task){
        print("\${index+1}. \$task");
      });
    }
  }

}
void main(){
  ToDoList toDoList=ToDoList();
  while(true){
    print("what do you want: \n1. Add Task \n2. Remove Task \n3. Update task \n4. Display Task \n5. Exit");
    String? choice=stdin.readLineSync();

    switch(choice){
      case"1":
        print("Enter task Description");
        String? description=stdin.readLineSync();
        print("Enter task date");
        String? date=stdin.readLineSync();
        if(description!=null&&date!=null){
          toDoList.addtasks(description, date);
        }
        break;
      case"2":
        print("Enter task number to remove");
        int index=int.parse(stdin.readLineSync()??"");
        if(index!=null){
          toDoList.removeTask(index-1);
        }
        break;
      case"3":
        print("Enter task number to update");
        int index=int.parse(stdin.readLineSync()??"");
        if(index!=null){
          print("Enter new state");
          bool status=stdin.readLineSync()=="true";
          toDoList.updatetask(index-1, status);
        }
        break;
      case"4":
        toDoList.displayTasks();
        break;
      case"5":
        print("Exit.....");
        return;
      default:
        print("please try again");
    }
  }
}