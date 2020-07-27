import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:todoapp/models/global.dart';

class IntrayTodo extends StatelessWidget
{
  final String title;
  final String keyValue;
  IntrayTodo({this.keyValue, this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        key: Key(keyValue),
        height: 150,
        margin: EdgeInsets.only(bottom:5),
        padding:EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            new BoxShadow(
              color:Colors.black.withOpacity(0.5),
              blurRadius: 10.0,
            )
          ],
          color: redColor,
          ),
          child: Row(
            children: <Widget>[
              Radio(
              ),
              Column(
                children: <Widget>[
                  Text(title, style:intrayDarkTitleStyle)              
                ],
                ),
          ],
          ),
        );
  }

}
