import 'package:dogsounds/view/allsounds.dart';
import 'package:dogsounds/view/dogtraining.dart';
import 'package:dogsounds/view/voicetranslator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "asset/Dog Voice Translator Prank@2x.png",
                  width: 250,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 235, 206, 168),
        child: ListView(
          clipBehavior: Clip.hardEdge,
          shrinkWrap: false,
          padding: EdgeInsets.all(10),
          children: <Widget>[
            ColoredBox(
              color: Colors.orangeAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: const Color.fromARGB(255, 19, 10, 10),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              selectedTileColor: Colors.white,
              tileColor: Colors.orangeAccent,
              title: Text(
                'Dog Sounds',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllDogSounds()));
              },
            ),
            ListTile(
              selectedTileColor: Colors.white,
              tileColor: Colors.orangeAccent,
              title: Text('Dog Voice Translator',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VoiceTranslator()));
              },
            ),
            ListTile(
                selectedTileColor: Colors.white,
                tileColor: Colors.orangeAccent,
                title: Text('Training',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DogTraining()));
                }),
            ListTile(
              selectedTileColor: Colors.white,
              tileColor: Colors.orangeAccent,
              title: Text('Fake Call',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              selectedTileColor: Colors.white,
              tileColor: Colors.orangeAccent,
              title: Text('Whistle',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            Divider(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.orangeAccent,
              title: Text("More",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Divider(
              height: 10,
            ),
            ListTile(
              selectedTileColor: Colors.white,
              tileColor: Colors.orangeAccent,
              title: Text('Privacy Policy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              selectedTileColor: Colors.white,
              tileColor: Colors.orangeAccent,
              title: Text('Terms & Conditions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "asset/Group 4@1x.png",
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("asset/Group 2@1x.png"),
                  Image.asset("asset/Group 3@1x.png"),
                ],
              ),
              Image.asset(
                "asset/Group 19@4x.png",
                height: 150,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("asset/Group 5@1x.png"),
                  Image.asset("asset/Group 1@1x.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
