

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dogsounds/modal/trainingmodal.dart';

class DogTraining extends StatefulWidget {
  const DogTraining({Key? key}) : super(key: key);

  @override
  State<DogTraining> createState() => _DogTrainingState();
}

class _DogTrainingState extends State<DogTraining> {
  List<Training>? trainingdog;

  void gettraining() async {
    try {
      var response = await http.post(Uri.parse(
          'https://appy.trycatchtech.com/v3/dog_translator/trainings_list'));

      if (response.statusCode == 200) {
        setState(() {
          trainingdog = Training.oftraining(jsonDecode(response.body));
        });
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    gettraining();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Image.asset("asset/Component 1 Container@2x.png"),
      backgroundColor: Color.fromARGB(255, 240, 205, 154),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 240, 205, 154),
        centerTitle: true,
        title: Text(
          'Dog Training',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
      body: trainingdog == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: trainingdog!.length,
              itemBuilder: (context, index) {
                final training = trainingdog![index];
                return Column(
                  children: [
                    Card(
                        semanticContainer: true,
                        child: ListTile(
                          title: Text(
                            training.title ?? '',
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            training.description ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: training.postImage != null
                              ? CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    training.postImage!,
                                  ),
                                )
                              : CircleAvatar(),
                        )),
                  ],
                );
              },
            ),
    );
  }
}
