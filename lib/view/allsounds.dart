import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

class AllDogSounds extends StatefulWidget {
  const AllDogSounds({Key? key}) : super(key: key);

  @override
  State<AllDogSounds> createState() => _AllDogSoundsState();

  void play(String audioUrl, {required bool isLocal}) {}
}

class _AllDogSoundsState extends State<AllDogSounds> {
  List<dynamic>? totalsound;

  Future<void> getAllSounds() async {
    try {
      var dogsound = await http.get(Uri.parse(
          'https://appy.trycatchtech.com/v3/dog_translator/all_sound_list'));

      if (dogsound.statusCode == 200) {
        setState(() {
          totalsound = jsonDecode(dogsound.body);
        });
      } else {
        print("Something went Wrong");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState? isPlaying;

  @override
  void initState() {
    super.initState();
    getAllSounds();
    audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.completed) {
        setState(() {
          isPlaying = PlayerState.completed;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 205, 154),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 240, 205, 154),
        leading: Image.asset("asset/home3@1x.png"),
        centerTitle: true,
        title: const Text(
          'All Sounds',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Image.asset('asset/Group 20@1x.png'),
            ),
          ),
          Expanded(
            child: totalsound == null
                ? const Center(child: const CircularProgressIndicator())
                : ListView.builder(
                    itemCount: totalsound!.length,
                    itemBuilder: (context, index) {
                      final sound = totalsound![index];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(child: Text(sound['id'])),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(sound['post_image']),
                          ),
                          title: Text(sound['post_name']),
                          onTap: () {
                            if (isPlaying == PlayerState.playing) {
                              stopAudioFromURL();
                            } else {
                              playAudioFromURL(sound['post_audio']);
                            }
                          },
                        ),
                      );
                    },
                  ),
          ),
          Image.asset("asset/Component 1 Container@2x.png")
        ],
      ),
    );
  }

  Future<void> playAudioFromURL(String url) async {
    try {
      await audioPlayer.play(UrlSource(url));
      await audioPlayer.resume();
      setState(() => isPlaying = PlayerState.playing);
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  Future<void> stopAudioFromURL() async {
    try {
      await audioPlayer.stop();
      setState(() {
        isPlaying = PlayerState.stopped;
      });
      await resetDrmState();
    } catch (e) {
      print("Error stopping audio: $e");
    }
  }

  Future<void> resetDrmState() async {
    try {
      await audioPlayer.release();
      await audioPlayer.dispose();
    } catch (e) {
      print("Error resetting DRM state: $e");
    }
  }
}
