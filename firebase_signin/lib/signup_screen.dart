import 'package:firebase_signin/reusable_widgets/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_signin/home_screen.dart';
class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Sign UP',
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.blue,
            // Colors.white,
            Colors.blue,
            Colors.black
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(child:Padding(
          padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Column(
            children:<Widget>[
              const SizedBox(height: 20,),
              reusableTextField('Enter UserName', Icons.person_outline, false,
                  _userNameTextController),
              const SizedBox(height: 20,
              ),
              reusableTextField('Enter Email Id', Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(height: 20,
              ),
              reusableTextField('Enter Password', Icons.lock_outlined, true,
                  _passwordTextController),
              const SizedBox(height: 20,
              ),
            signInSignUpButton(context,false,(){
              Navigator.push(context,
              MaterialPageRoute(builder:(context)=>HomeScreen()));
        }
        ),

            ]
          ),
        )),
      ),
    );
  }
}
