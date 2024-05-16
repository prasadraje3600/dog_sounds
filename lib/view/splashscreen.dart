import 'package:dogsounds/view/helloscreen.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // String? userName;

  // void getUserName() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   userName = prefs.getString("username");
  //   setState(() {});
  // }

  @override
  void initState() {
    // getUserName();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HelloScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text(
                "Loading...",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                height: 250,
                width: 250,
                "asset/Frame 34759 1@2x.png",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Dog Voice Translator Prank",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Image.asset(
                height: 250,
                width: 250,
                "asset/Dog Walking 1@2x.png",
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
