import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';




class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _RegistrationPageState();

  
}


class _RegistrationPageState extends State<SignUpPage> {
  TextEditingController passController = TextEditingController();
  var formkey = GlobalKey<
      FormState>(); // formkey used to monitor the state of entire form and validate it
  var pwd_visibity = true;

  @override
  void dispose() {
    passController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          //physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formkey,
              // if we do not set key here validation will not occur
              child: Column(
                children: [
                  const SizedBox(height: 50), // Adding space at the top
                  Text("Register", style: GoogleFonts.montserrat(
                    color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  Text("Create Your Account",
                      style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 15)),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "UserName",
                      hintText: 'Enter your Username here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty || !email.contains('@')) {
                        return "email must be a valid email";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'Enter your email here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText: pwd_visibity,
                    obscuringCharacter: '*',
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return 'Password is empty or / check the length';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (pwd_visibity == true) {
                                pwd_visibity = false;
                              } else {
                                pwd_visibity = true;
                              }
                            });
                          },
                          icon: Icon(pwd_visibity == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter your password here',
                      helperText:
                          'Password must contain upper and lowercase letters',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscuringCharacter: '*',
                    obscureText: pwd_visibity,
                    validator: (confirmpassword) {
                      if (confirmpassword!.isEmpty ||
                          confirmpassword != passController.text) {
                        return "password empty/mismatch";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (pwd_visibity == true) {
                                pwd_visibity = false;
                              } else {
                                pwd_visibity = true;
                              }
                            });
                          },
                          icon: Icon(pwd_visibity == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      hintText: 'Confirm your password here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text("By signing you agree to out team\n   of use and privacy notice",
                  style: GoogleFonts.montserrat(
                    color:Colors.grey,
                    fontSize:15,
                  ),),
                  SizedBox(height: 14,),
                  ElevatedButton(
                onPressed: () {
                 var valid = formkey.currentState!.validate();
                      if (valid == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Registration failed")));
                      }
                    },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4A884D),
                    minimumSize: Size(400, 50)),
                child: Text(
                  "Register",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                  ),
                ),
              ),
                  // MaterialButton(
                  //   onPressed: () {
                  //     var valid = formkey.currentState!.validate();
                  //     if (valid == true) {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                                // builder: (context) => LoginPage()));
                  //     } else {
                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //           const SnackBar(
                  //               content: Text("Registration failed")));
                  //     }
                  //   },
                  //   color: Color(0xFF4A884D),
                  //   minWidth: 200,
                  //   shape: const StadiumBorder(),
                  //   child: const Text("Register"),
                  // ),
                  //const SizedBox(height: 20), // Adjusted spacer
                  // TextButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => LoginPage()));
                  //     },
                      Text("Already Registered?? SignIn Here!!",
                          style: GoogleFonts.montserrat(
                            color:Colors.grey,
                            fontSize:15
                          )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}