import 'package:abhisehk/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'forgot_password.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
      body: SafeArea(
        child: Stack(
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
                        height: mainHeight / 35,
                      ),
                      Image.asset(
                        "assest/Krizaar logo.png",
                        height: 65,
                      ),
                      SizedBox(
                        height: mainHeight / 20,
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: mainHeight / 25,
                            color: Colors.white),
                      ),
                      Text(
                        "Sign In to Continue",
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: mainHeight / 45,
                        ),
                      ),
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
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Your Email or Phone Number",
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
                            padding: const EdgeInsets.only(
                                top: 2, left: 20, right: 8),
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
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Colors.red[300],
                            fontSize: mainHeight / 42,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mainHeight / 70,
                      ),
                      GestureDetector(
                        child: Container(
                          height: mainHeight / 15,
                          width: mainWidth / 2.5,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Colors.pink,
                                  CupertinoColors.systemPink
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                tileMode: TileMode.clamp),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                            "Sign In",
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
                                builder: (context) =>
                                    const ForgotPasswordPage(),
                              ));
                        },
                      ),
                      SizedBox(
                        height: mainHeight / 40,
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Divider(
                            height: 1,
                          )),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "Or",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            height: 1,
                          ))
                        ],
                      ),
                      SizedBox(
                        height: mainHeight / 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.icon-icons.com/icons2/4029/PNG/512/twitter_x_new_logo_x_rounded_icon_256078.png"))),
                            ),
                          ),
                          SizedBox(
                            width: mainWidth / 30,
                          ),
                          InkWell(
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYrgjZVYT0sxSCRszjJuS3WQcAk8MPmHxntLon0awmKw&s"))),
                            ),
                          ),
                          SizedBox(
                            width: mainWidth / 13,
                          ),
                          InkWell(
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.icon-icons.com/icons2/2429/PNG/512/google_logo_icon_147282.png"))),
                            ),
                          ),
                          SizedBox(
                            width: mainWidth / 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mainHeight / 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "you don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: mainWidth / 70,
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
