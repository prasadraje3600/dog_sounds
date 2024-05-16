import 'package:dogsounds/view/Greatjobscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(200))),
              ),
              Center(
                child: Image.asset(
                  "asset/Group 1000003715@2x.png",
                  width: 300,
                  height: 600,
                ),
              )
            ],
          ),
          Text(
            "Translate your pup’s bark!",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Communicate with your furry friend & ",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "decode your dog’s thoughts like never before!",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GreatJob(),
                    
                  ),
                );
              
              },
              child: Image.asset("asset/paw (3) 6@1x.png")),
        ],
      ),
    );
  }
}
