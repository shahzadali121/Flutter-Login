
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login_screen.dart';
import 'package:flutter_login/screens/shared_preferences.dart';
import 'package:flutter_login/screens/splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Flutter Login",
     theme: ThemeData(
       primaryColor: Colors.blue
     ),
     home:SplashScreen()
   );
  }

}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Flutter Login"),
       backgroundColor: Colors.blue,
     ),
     body: Container(
       color: Colors.green,
     ),
   );
  }

}