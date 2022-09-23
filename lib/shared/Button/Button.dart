
import 'package:flutter/material.dart';

Widget DefalutButton({
  required String text,
  required double height ,
  required double width ,
  double blurRadius =0,
  double spreadRadius=0 ,

})=>Container(
width: width,
height: height,
decoration: BoxDecoration(
shape: BoxShape.rectangle,
color: Color(0xff4eeec2),
boxShadow: [
BoxShadow(
color: Colors.grey,
blurRadius: blurRadius,
spreadRadius: spreadRadius,
)
]
),
child: Center(
child: Text('$text',
style: TextStyle(
fontSize: 20,
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
),
);