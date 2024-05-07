import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final bool _isVisible = false;

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
          Positioned(
              right: 0,
              left: 5,
              bottom: 10,
              child: Image.asset("assest/Group.png")),
          Positioned(
            bottom: 70,
            right: MediaQuery.of(context).size.height * 0.15,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) {},
                //     ));
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
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: mainHeight / 45,
                      fontWeight: FontWeight.w700),
                )),
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: 55,
            child: Center(
              child: Image.asset(
                "assest/Krizaar logo.png",
                height: 65,
              ),
            ),
          ),
          const Positioned(
            top: 145,
            left: 80,
            child: Text(
              "Cheaper Faster Better",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
