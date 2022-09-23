import 'package:flutter/material.dart';

Widget DefaultTextFormField({
  required String hintName ,
  IconData? suffix,
  IconData? prefix,
  bool isPassword=false,
  Function? showPassword ,
  required Function validate,

})=>TextFormField(
  controller: TextEditingController(),

  obscureText: isPassword,

  validator: (value)
  {
     if(value!.isEmpty)
     {
        validate;
        return '$hintName is required';
      }
   },

  decoration: InputDecoration(

      fillColor: Colors.white,

      border: InputBorder.none,

      suffixIcon: Icon(suffix,color: Colors.red),

      prefixIcon:Icon(prefix) ,

      focusedBorder: UnderlineInputBorder(

        borderSide: BorderSide(

          style: BorderStyle.none,

        ),

      ),

      filled: true,

      hintText: hintName,

      hintStyle: TextStyle(

        color:Color(0xffd0d0d0),

      )

  ),

);