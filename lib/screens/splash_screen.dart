import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login_screen.dart';

class SplashScreen extends StatefulWidget{


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        child: Center(child: Text("Wellcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}