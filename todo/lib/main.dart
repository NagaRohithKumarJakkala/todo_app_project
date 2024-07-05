import 'package:flutter/material.dart';
void main()
{
  runApp(const App());
}

class Task
{
String title="Title";
String description = "None";
bool isCompleted=false;
Task(this.title,this.description);
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
     List<String> tasks=<String>["to add a task tap + button"];
    return MaterialApp(
    home:Scaffold(
      appBar:AppBar(
        title:const Center(
          child:Text(
            "ToDo App",
            style:TextStyle(color:Colors.white)
            )
          ),
          backgroundColor:Colors.green[900]
      ),
      body:Container( 
      color:Colors.black,
      child:ListView.builder(
          itemCount:tasks.length,
          prototypeItem:ListTile(
            title:Text(
              tasks.first,
            style:const TextStyle(color:Colors.white)
            ),
            ),
            itemBuilder:(context,index){
              return ListTile(
                title:Text(
                  tasks[index],
                  style:const TextStyle(color:Colors.white)
                  )
              );
            }

      )
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){

        },
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.black,
        child:const Icon(Icons.add)
      ) ,
      )
        );
  }
}
