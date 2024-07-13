

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

class ListItem extends StatelessWidget{
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container( 
      color:Colors.grey[900],
       child:ListTile(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor:Colors.white,
        leading:IconButton(icon:const Icon(Icons.check_box,color:Colors.white),onPressed:(){}),
        title:const Center(child: Text("Todo item",style:TextStyle(color:Colors.white))),
        trailing:IconButton(icon:const Icon(Icons.delete,color:Colors.white),onPressed:(){})
        )
        );
    
    
  }


}

class App extends StatefulWidget{
  const App({super.key});
@override
  State<StatefulWidget> createState() {
    return Home();
  }
  
  
}

class Home extends State<App>{
  @override
  Widget build(BuildContext context){
   // List<Task> tasks=<Task>[Task("add a task","to add a task press +")];
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
          backgroundColor:Colors.grey[900]
      ),
      body:TabBarView(
        children:[
          Container(
            color:Colors.black,
            child:ListView(
            children:const <Widget>[
              //Text("Todo")
               ListItem()
              ]
        )),
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
