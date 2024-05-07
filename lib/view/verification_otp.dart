import 'package:abhisehk/view/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationOtppage extends StatefulWidget {
  const VerificationOtppage({super.key});

  @override
  State<VerificationOtppage> createState() => _VerificationOtppageState();
}

class _VerificationOtppageState extends State<VerificationOtppage> {
  @override
  Widget build(BuildContext context) {
    var mainHeight = MediaQuery.of(context).size.height;
    var mainWidth = MediaQuery.of(context).size.width;

    final defaultPinTheme = PinTheme(
        width: mainWidth / 6,
        height: mainHeight / 13,
        textStyle: const TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.deepOrange, width: 1.5)));

    return Scaffold(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "KRI ",
                          style: TextStyle(
                              fontSize: mainHeight / 22, color: Colors.white),
                        ),
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: mainHeight / 17,
                        ),
                        Text(
                          " AAR",
                          style: TextStyle(
                              fontSize: mainHeight / 22, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: mainHeight / 20,
                    ),
                    Text(
                      "Verification",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: mainHeight / 28,
                          color: Colors.white),
                    ),
                    Text(
                      "Enter OTP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: mainHeight / 42,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: mainHeight / 20,
                    ),
                    SizedBox(
                        child: Pinput(
                            // controller: pinController,
                            keyboardType: TextInputType.number,
                            length: 4,
                            defaultPinTheme: defaultPinTheme,
                            onChanged: (value) {
                              setState(() {
                                // isTextFieldEmpty = value.isEmpty;
                              });
                            })),
                    SizedBox(
                      height: mainHeight / 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive OTP?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mainHeight / 48,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: mainWidth / 70,
                        ),
                        Text(
                          "Resend",
                          style: TextStyle(color: Colors.red[400]),
                        ),
                      ],
                    ),
                    const Text(
                      "00:37",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: mainHeight / 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
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
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mainHeight / 45,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
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
