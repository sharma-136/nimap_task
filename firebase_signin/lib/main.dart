import 'package:flutter/material.dart';
import 'package:firebase_signin/signin_screen.dart';
void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const SignInScreen(),
    );
  }
}


