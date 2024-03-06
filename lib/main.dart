import 'package:flutter/material.dart';
import 'package:flutter_application_2/splash.dart';
// ignore: depend_on_referenced_packages
//import 'package:app1/screens/SplashScreen.dart';
 // ignore: constant_identifier_names
 const save_key='userlogin';
 

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: "Demo App",
      home: SplashScreen()
);
}
}