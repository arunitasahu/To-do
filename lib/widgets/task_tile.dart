import 'package:flutter/material.dart';


class tasktitle extends StatelessWidget {



  final bool isChecked;
  final String name;
  final Function callbackfun;
  final VoidCallback longPressCallBack;

  tasktitle({this.isChecked=false
    ,required this.name,
    required this.callbackfun
    ,required this.longPressCallBack});




  @override
  Widget build(BuildContext context) {
    return  ListTile(
        onLongPress: longPressCallBack

        ,leading: Icon(Icons.ac_unit,
      color: Colors.lightBlueAccent,),
        title: Text(name,style: TextStyle(
            color: Colors.black54,fontWeight: FontWeight.bold,
            decoration:isChecked?TextDecoration.lineThrough :null
        ),),


        trailing:  Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged:(res){
              callbackfun(res);
            }
        )
    );


  }
}
