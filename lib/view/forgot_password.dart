import 'package:abhisehk/view/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    var mainHeight = MediaQuery.of(context).size.height;
    var mainWidth = MediaQuery.of(context).size.width;

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
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: mainHeight / 28,
                          color: Colors.white),
                    ),
                    Text(
                      "Please type your email or phone number below\nand we can help you reset your password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: mainHeight / 52,
                          fontWeight: FontWeight.w300),
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
                      height: mainHeight / 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPasswordPage(),
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
