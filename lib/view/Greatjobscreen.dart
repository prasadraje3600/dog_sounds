import 'package:dogsounds/view/startpage.dart';
import 'package:flutter/material.dart';

class GreatJob extends StatelessWidget {
  const GreatJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 150, 91),
                      borderRadius: BorderRadius.all(Radius.circular(200))),
                ),
                Image.asset(
                  "asset/Group 1000003717@4x.png",
                  height: 700,
                  width: 500,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StartPage(),
                      
                    ),
                  );
                },
                child: Image.asset("asset/paw (3) 6@1x.png")),
          ],
        ),
      ),
    );
  }
}
