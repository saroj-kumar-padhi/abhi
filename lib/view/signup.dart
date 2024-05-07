import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'forgot_password.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {

    var mainHeight = MediaQuery.of(context).size.height;
    var mainWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: mainHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [ Colors.deepPurple, Colors.pink],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp
              ),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(height: mainHeight/12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("KRI ", style: TextStyle(fontSize: mainHeight/22, color: Colors.white),),
                        Icon(Icons.shopping_bag, color: Colors.white, size: mainHeight/17,),
                        Text(" AAR", style: TextStyle(fontSize: mainHeight/22, color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: mainHeight/18,),
                    Text("Sign Up", style: TextStyle(fontSize: mainHeight/25, color: Colors.white),),
                    // Text("Sign In to Continue", style: TextStyle(color: Colors.grey[100],fontSize: mainHeight/42,),),

                    SizedBox(height: mainHeight/20,),
                    Container(
                      height: mainHeight/15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrangeAccent)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Full Name",
                              hintStyle: TextStyle(fontWeight: FontWeight.w300)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mainHeight/30,),
                    Container(
                      height: mainHeight/15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrangeAccent)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(fontWeight: FontWeight.w300)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mainHeight/30,),
                    Container(
                      height: mainHeight/15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrangeAccent)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 20, right: 8),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(fontWeight: FontWeight.w300),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              icon: Icon(_isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: mainHeight/15,),
                    GestureDetector(
                      child: Container(
                        height: mainHeight/15,
                        width: mainWidth/2.5,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [ Colors.pink, CupertinoColors.systemPink],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              tileMode: TileMode.clamp
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: mainHeight/45, fontWeight: FontWeight.w700),)),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage(),));
                      },
                    ),
                    SizedBox(height: mainHeight/25,),

                    Text("By continuing you agree to our Term of Service and\nPrivacy Policy", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[100],fontSize: mainHeight/56, fontWeight: FontWeight.w300),),
                    SizedBox(height: mainHeight/40,),


                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
