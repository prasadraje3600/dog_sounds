// import 'package:flutter/material.dart';

// class LanguageSelect extends StatefulWidget {
//   const LanguageSelect({super.key});

//   @override
//   State<LanguageSelect> createState() => _LanguageSelectState();
// }

// class _LanguageSelectState extends State<LanguageSelect> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Image.asset("asset/Select Language@1x.png"),
//             Image.asset("asset/Frame 13@1x.png"),
//             SizedBox(
//               height: 50,
//             ),
//             ElevatedButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Continue",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 )),
//             Container(
//                 height: 200,
//                 width: 400,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(100),
//                         bottomRight: Radius.circular(50))),
//                 child: Image.asset(
//                   "asset/Rectangle 25@1x.png",
//                   fit: BoxFit.fill,
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:dogsounds/view/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({Key? key});

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SafeArea(
              child: Image.asset("asset/Select Language@1x.png"),
            ),
            Image.asset("asset/Frame 13@1x.png"),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mainpage(),
              
                  ),
                );
              },
              child: Text(
                "Continue",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30))),
                        child: Image.asset("asset/Rectangle 25@1x.png"),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
