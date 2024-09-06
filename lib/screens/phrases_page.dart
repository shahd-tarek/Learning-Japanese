import 'package:flutter/material.dart';
import 'package:tokuapp/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrases> phrase = const [
    Phrases(
        sound: "sounds/phrases/are_you_coming.wav",
        enName: "Are you coming",
        jpName: "Kimasu ka"),
    Phrases(
        sound: "sounds/phrases/yes_im_coming.wav",
        enName: "yes im coming",
        jpName: "Hai, kimasu"),
    Phrases(
        sound: "sounds/phrases/what_is_your_name.wav",
        enName: "What is your name",
        jpName: "Anata no namae wa nanidesu ka"),
    Phrases(
        sound: "sounds/phrases/where_are_you_going.wav",
        enName: "Where are you going",
        jpName: "Doko ni iku no"),
    Phrases(
        sound: "sounds/phrases/i_love_programming.wav",
        enName: "I love programming",
        jpName: "Puroguramingu ga daisukidesu"),
    Phrases(
        sound: "sounds/phrases/programming_is_easy.wav",
        enName: "programming is easy",
        jpName: "Puroguramingu wa kantandesu"),
    Phrases(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        enName: "how are you feeling",
        jpName: "Go kibun wa ikagadesu ka."),
    Phrases(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        enName: "dont forget to subscribe",
        jpName: "Kōdoku suru koto o wasurenaide kudasai"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Phrases",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue[300],
            child: ListTile(
              title: Text(
                phrase[index].enName,
                style: const TextStyle(fontSize: 23, color: Colors.white),
              ),
              subtitle: Text(phrase[index].jpName),
              subtitleTextStyle:
                  const TextStyle(fontSize: 23, color: Colors.white),
              trailing: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrase[index].sound));
                },
                icon:
                    const Icon(Icons.play_arrow, size: 30, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
