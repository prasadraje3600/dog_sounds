import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:http/http.dart' as http;

class VoiceTranslator extends StatefulWidget {
  @override
  _VoiceTranslatorState createState() => _VoiceTranslatorState();
}

class _VoiceTranslatorState extends State<VoiceTranslator> {
  FlutterTts flutterTts = FlutterTts();
  List<Map<String, dynamic>> _translationList = [];

  @override
  void initState() {
    super.initState();
    fetchTranslationList();
  }

  void fetchTranslationList() async {
    try {
      var response = await http.get(Uri.parse(
          'https://appy.trycatchtech.com/v3/dog_translator/voice_translator_list'));
      if (response.statusCode == 200) {
        setState(() {
          _translationList =
              List<Map<String, dynamic>>.from(jsonDecode(response.body));
        });
      } else {
        print('Failed to fetch translations');
      }
    } catch (e) {
      print('Error fetching translations: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Image.asset("asset/Component 1 Container@2x.png"),
      backgroundColor: Color.fromARGB(255, 237, 220, 194),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 220, 194),
        centerTitle: true,
        title: Text(
          'Voice Translator',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 240, 167, 58)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: _translationList.isNotEmpty
              ? ListView.builder(
                  itemCount: _translationList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shadowColor: Color.fromARGB(96, 227, 158, 158),
                      margin: EdgeInsets.all(2),
                      child: ListTile(
                        tileColor: Color.fromARGB(255, 241, 203, 146),
                        leading: CircleAvatar(
                            child: Text(
                          _translationList[index]["id"],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        title: Text(_translationList[index]['post_name'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        onTap: () {
                          _speak(_translationList[index]['post_name']);
                        },
                      ),
                    );
                  },
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }

  Future _speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }
}
