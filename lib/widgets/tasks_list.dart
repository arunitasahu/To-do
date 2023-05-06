import 'package:checklist/models/task.dart';
import 'package:checklist/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:checklist/models/task_data.dart';


class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<Task_Data>(
        builder: (context, tasksdata, child) {

          return ListView.builder(itemBuilder:
              (context, index) {
            final task =tasksdata.taksList[index];

            return
              Card(
                shadowColor: Colors.lightBlueAccent,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: tasktitle(name: task.name,
                    isChecked: task.isdone,
                    callbackfun: (checkboxstate) {

                      tasksdata.updateTask(task);

                      print("update");
                    },longPressCallBack:
                        (){
                      tasksdata.deleteTask(task);
                      print("delete");
                    }


                ),
              );
          },
            itemCount: tasksdata.taksList.length,
          );
        });
  }

}


