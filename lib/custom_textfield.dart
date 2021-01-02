import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{

Function saveFun;
Function validationFun;
String label;

CustomTextField({this.label,this.saveFun,this.validationFun});

  @override
  Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.only(top:10),
     child: TextFormField(
             onSaved: (value)=>saveFun(value),
                          validator: (value)=>validationFun(value),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            
                            labelText: label,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
     ),
   );
  }}

