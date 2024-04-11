import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/screens/home.dart';
import 'package:flutter_ui/screens/sign.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
  
  
}
  class _LoginPageState extends State<LoginPage> {
  String username = "admin";
  String password = 'abc123';

  var usercontroller = TextEditingController();
  var pwdcontroller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    usercontroller.dispose();
    pwdcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          
          child: Column(
          
            children: [
              
              Container(
                child: Align(alignment: Alignment.topLeft,
                child:  Icon(Icons.arrow_back_sharp)),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(60),bottomRight:Radius.circular(60)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                       image:  NetworkImage(
                            "https://images.unsplash.com/photo-1491147334573-44cbb4602074?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8f"))),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome back",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Login to your account",
                  style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
              ),
              
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: usercontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  border: OutlineInputBorder(
                    // Border configuration
                    borderRadius: BorderRadius.circular(10.0),
                    // No border
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                  labelText: "Full Name",
                  hintText: 'Enter your full name here',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: pwdcontroller,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  border: OutlineInputBorder(
                    // Border configuration
                    borderRadius: BorderRadius.circular(10.0),
                    // No border
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                  labelText: "Password",
                  hintText: 'Enter your password here',
                  // helperText:
                  //     'Password must contain upper and lowercase letters',
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Remember me",
                style: GoogleFonts.montserrat(color:Colors.grey,fontSize:15),),
              ),
              
              SizedBox(
                height: 55,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomePage())));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4A884D),
                    minimumSize: Size(400, 50)),
                child: Text(
                  "Login",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 18,),
              RichText(
                  text: TextSpan(
                      text: "not a user?",
                      style: GoogleFonts.montserrat(color: Colors.grey),
                      children: [
                    TextSpan(
                        text: 'Signup',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                          },
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, color: Colors.grey))
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
