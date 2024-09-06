import 'package:flutter/material.dart';
import 'package:tokuapp/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Item> familys = const [
    Item(
        sound: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        enName: "Father",
        jpName: "Chichioya"),
    Item(
        sound: "sounds/family_members/mother.wav",
        image: "assets/images/family_members/family_mother.png",
        enName: "Mother",
        jpName: "Okāsan"),
    Item(
        sound: "sounds/family_members/son.wav",
        image: "assets/images/family_members/family_son.png",
        enName: "Son",
        jpName: "Musuko"),
    Item(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        enName: "Daughter",
        jpName: "Musume"),
    Item(
        sound: "sounds/family_members/older bother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        enName: "older brother",
        jpName: "Chōnan"),
    Item(
        sound: "sounds/family_members/older sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        enName: "older sister",
        jpName: "Chōjo"),
    Item(
        sound: "sounds/family_members/grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        enName: "grand father",
        jpName: "Sofu"),
    Item(
        sound: "sounds/family_members/grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        enName: "grand mother",
        jpName: "O bāchan"),
    Item(
        sound: "sounds/family_members/younger brohter.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        enName: "younger brother",
        jpName: "Suekko"),
    Item(
        sound: "sounds/family_members/younger sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        enName: "younger sister",
        jpName: "Sue musume"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family Members",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: familys.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.green,
            child: ListTile(
              leading: Container(
                  color: const Color(0xfffef6db),
                  width: 70,
                  height: 120,
                  child: Image.asset(
                    familys[index].image,
                    fit: BoxFit.cover,
                  )),
              title: Text(
                familys[index].enName,
                style: const TextStyle(fontSize: 23, color: Colors.white),
              ),
              subtitle: Text(familys[index].jpName),
              subtitleTextStyle:
                  const TextStyle(fontSize: 23, color: Colors.white),
              trailing: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(familys[index].sound));
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
