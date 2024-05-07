import 'package:abhisehk/view/verification_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    var mainHeight = MediaQuery.of(context).size.height;
    var mainWidth = MediaQuery.of(context).size.width;
    PasswordVisibilityController controller =
        Get.put(PasswordVisibilityController());

    RxBool confirmPassWord = true.obs;

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
                      height: mainHeight / 12,
                    ),
                    Image.asset(
                      "assest/Krizaar logo.png",
                      height: 65,
                    ),
                    SizedBox(
                      height: mainHeight / 20,
                    ),
                    Text(
                      "Reset Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: mainHeight / 28,
                          color: Colors.white),
                    ),
                    Text(
                      "And now, you can type your new password and\n confirm below",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: mainHeight / 52,
                          fontWeight: FontWeight.w300),
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
                                hintText: "New Password",
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
                      height: mainHeight / 28,
                    ),
                    Obx(() {
                      return Container(
                        height: mainHeight / 15,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            border: Border.all(color: Colors.deepOrangeAccent)),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 2, left: 20, right: 8),
                          child: TextField(
                            obscureText: confirmPassWord.value,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.w300),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _isVisible = !_isVisible;
                                  confirmPassWord.value =
                                      !confirmPassWord.value;
                                },
                                icon: Icon(_isVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      height: mainHeight / 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VerificationOtppage(),
                            ));
                      },
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
                          "Send",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mainHeight / 45,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
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
