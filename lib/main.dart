import 'package:flutter/material.dart';
import 'package:regester/Screens/SignUp.dart';

import 'Screens/LogIn.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LogIn.route,
      routes: {
        LogIn.route: (context) => LogIn(),
        SignUp.route: (context) => SignUp(),
      }
    );
  }
}
