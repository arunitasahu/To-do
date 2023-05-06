import 'package:flutter/material.dart';
import 'package:checklist/screens/add_task_screen.dart';
import '../models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'package:checklist/models/task.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          showModalBottomSheet(context: context, builder:(context)=> AddTaskScreen()
          );
        },
        child: Icon(Icons.add_box_sharp),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,


        children: [
          Container(
            decoration: BoxDecoration(
                image: new DecorationImage(image: new AssetImage("images/kawai.jpg"),
                    fit: BoxFit.fill)
            ),

            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),

            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                CircleAvatar(
                  child: Icon(
                    Icons.list , size: 30.0, color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,



                ),
                SizedBox(height: 10),


                Text("Todoey",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700

                  ),),

                SizedBox(height: 10),
                Container(

                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: Text("Your Task - ${Provider.of<Task_Data>(context).taskcount}",

                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 20.0,
                        fontWeight: FontWeight.w700,


                    ),),
                ),

                // SizedBox(height: 10),

              ],
            ),




          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 300,

              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )


              ),

              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}







