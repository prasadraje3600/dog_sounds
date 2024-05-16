import 'package:dogsounds/view/language.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Termpage extends StatelessWidget {
  const Termpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("asset/Terms of Use@1x.png"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  "asset/Group 1000003714@1x.png",
                  height: 500,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LanguageSelect(),
                        // userName != null ? const HomePages() : LoginPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "asset/Group 25@1x.png",
                    height: 150,
                    width: 200,
                  ),
                ),
                Image.asset(
                  "asset/Rectangle 18@2x.png",
                  height: 150,
                  width: 350,
                )
              ],
            ),
          )),
    );
  }
}
