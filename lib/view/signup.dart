import 'package:abhisehk/view/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import 'forgot_password.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    var mainHeight = MediaQuery.of(context).size.height;
    var mainWidth = MediaQuery.of(context).size.width;

    PasswordVisibilityController controller =
        Get.put(PasswordVisibilityController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the app bar transparent
        shadowColor: Colors.black,
        elevation: 5,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.pink],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: mainHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.pink],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(
                      height: mainHeight / 20,
                    ),
                    Image.asset(
                      "assest/Krizaar logo.png",
                      height: 65,
                    ),
                    SizedBox(
                      height: mainHeight / 23,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: mainHeight / 25, color: Colors.white),
                    ),
                    // Text("Sign In to Continue", style: TextStyle(color: Colors.grey[100],fontSize: mainHeight/42,),),

                    SizedBox(
                      height: mainHeight / 20,
                    ),
                    Container(
                      height: mainHeight / 15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrangeAccent)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Full Name",
                              hintStyle:
                                  TextStyle(fontWeight: FontWeight.w300)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mainHeight / 30,
                    ),
                    Container(
                      height: mainHeight / 15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrangeAccent)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle:
                                  TextStyle(fontWeight: FontWeight.w300)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mainHeight / 30,
                    ),
                    Container(
                      height: mainHeight / 15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(color: Colors.deepOrangeAccent)),
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 2, left: 20, right: 8),
                          child: Obx(
                            () => TextField(
                              obscureText: !controller.isVisible.value,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w300),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.changeVisibility();
                                  },
                                  icon: Icon(controller.isVisible.value
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined),
                                ),
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: mainHeight / 20,
                    ),
                    GestureDetector(
                      child: Container(
                        height: mainHeight / 15,
                        width: mainWidth / 2.5,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Colors.pink, CupertinoColors.systemPink],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              tileMode: TileMode.clamp),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mainHeight / 45,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ));
                      },
                    ),
                    SizedBox(
                      height: mainHeight / 25,
                    ),

                    Text(
                      "By continuing you agree to our Term of Service and\nPrivacy Policy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: mainHeight / 56,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: mainHeight / 40,
                    ),
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
