// ignore_for_file: file_names, prefer_const_constructors


import 'package:active_burn_app/authentication/sign_in.dart';
import 'package:active_burn_app/authentication/auth_methods.dart';

import 'package:flutter/material.dart';
// ignore: camel_case_types
class signup extends StatefulWidget {

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                "assets/upper circle.png",
              ),
          ),
            ),
            SizedBox(
              child: Text(
                'WELCOME ACTIVEBURN',
                style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02, fontWeight: FontWeight.bold),
                )
              ),
      
            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              
              SizedBox(  
              child: Text(
                'Lets help you, meet up your tasks',
                style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.02),
                )
              ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.19,
                width: MediaQuery.of(context).size.height * 0.19,
                child: Image.asset('assets/signUp.png'),
                
              ),
            Center(            
              child: Column(children: [ 
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.height * 0.45,
                        child: Column(children: [
                          // ignore: prefer_const_literals_to_create_immutables  
                          Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.height * 0.45,
                            child: TextFormField(
      
                              controller: _name,
                              decoration: 
                              InputDecoration(          
                                hintText: 'Enter Your Full Name',
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
      
                                    borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                              ),
                            ),
                          ),
                        ),
                        ],),
                      ),
      
      
                      
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.height * 0.45,
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Column(children: [
                          // ignore: prefer_const_literals_to_create_immutables
                          Material(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.height * 0.45,
                            child: TextFormField(
                              validator: (val) {
                                return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!)
                                    ? null
                                    : "Please Enter Correct Email";
                              },
                              controller: _email,
                              decoration: InputDecoration(
                                
                                hintText: 'Enter Your Email',
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
      
                                    borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                                
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                              ),
                            ),
                          ),
                        ),
                        ],),
                      ),
      
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.height * 0.45,
                        child: Column(children: [                      
                        Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.45,
                          child: TextFormField(
                            
                            controller: _password,
                            decoration: InputDecoration(
                              
                              hintText: 'Enter Password',
                              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
      
                                  borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                              
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                            ),
                          ),
                        ),
                      ),
                        ],),
                      ),
      
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.height * 0.45,
                        child: Column(children: [                      
                        Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.height * 0.45,
                          child: TextFormField(
                            
                            controller: _confpassword,
                            decoration: InputDecoration(
                              
                              hintText: 'Confirm Password',
                              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
      
                                  borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                              
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12, width: 2.0)),
                            ),
                          ),
                        ),
                      ),
                        ],),
                      ),
                      
                  
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.height * 0.42,
                        child: ElevatedButton(
                          
                            onPressed: () => {
                              createAccount(_name.text, _email.text, _password.text).then((user) {
                              if (user != null) {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => signin()));
                                print("Account Created Sucessfull");
                              } 
                              else {
                                print("Login Failed");
                              }
                            })
                            },
                            
                            // ignore: sort_child_properties_last
                            child: Text(
                              'Register', style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).buttonColor,  
                              textStyle: TextStyle(
                                fontSize: 15,
                              ),
                            )),
                      ),
      
              
                      Padding(
                        padding: const EdgeInsets.only(left:37),
                        child: Row(
                          children: [
                            Text("Already Have an Account?", style: TextStyle(fontSize: 16),),
                            TextButton(
                              onPressed: () async {
                                  Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => signin()
                                ));
                                }, 
                              child: Text(
                                  'Sign In', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, 
                                  color: Theme.of(context).primaryColor,)
                                ), 
                              ),
                          ],
                        ),
                      ),
      
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}