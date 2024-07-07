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
    home:DefaultTabController(
      length:2,
      child:Scaffold(
      appBar:AppBar(
        title:const Center(
          child:Text(
            "ToDo App",
            style:TextStyle(color:Colors.white)
            )
          ),
          bottom:const TabBar(
            tabs:[
              Tab(child:Text("Pending",style:TextStyle(color:Colors.white))),
              Tab(child:Text("Completed",style:TextStyle(color:Colors.white)))
            ],
            dividerColor:Colors.black,
            indicatorColor:Colors.white,
          ),
          backgroundColor:Colors.green[900]
      ),
      body:TabBarView(
        children:[
          Container(
            color:Colors.black,
            child:const Text("Empty",style:TextStyle(color:Colors.white)),
          ),
           Container(
            color:Colors.black,
            child:const Text("Empty",style:TextStyle(color:Colors.white)),
            ),
        ]
      )
      )
        )
    );
  }
}
