import 'package:flutter/material.dart';
import 'package:tokuapp/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colorr = const [
    Item(
        sound: "sounds/colors/dusty yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        enName: "dusty yellow",
        jpName: "Hokori ppoi kiiro"),
    Item(
        sound: "sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png",
        enName: "White",
        jpName: "Shiro"),
    Item(
        sound: "sounds/colors/red.wav",
        image: "assets/images/colors/color_red.png",
        enName: "Red",
        jpName: "Aka"),
    Item(
        sound: "sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png",
        enName: "yellow",
        jpName: "Kiiro"),
    Item(
        sound: "sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        enName: "black",
        jpName: "Kuro"),
    Item(
        sound: "sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        enName: "gray",
        jpName: "Gurē"),
    Item(
        sound: "sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png",
        enName: "green",
        jpName: "Midori"),
    Item(
        sound: "sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        enName: "brown",
        jpName: "Chairo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: colorr.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.purple,
            child: ListTile(
              leading: Container(
                  color: const Color(0xfffef6db),
                  width: 70,
                  height: 120,
                  child: Image.asset(
                    colorr[index].image,
                    fit: BoxFit.cover,
                  )),
              title: Text(
                colorr[index].enName,
                style: const TextStyle(fontSize: 23, color: Colors.white),
              ),
              subtitle: Text(colorr[index].jpName),
              subtitleTextStyle:
                  const TextStyle(fontSize: 23, color: Colors.white),
              trailing: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(colorr[index].sound));
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
