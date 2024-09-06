import 'package:flutter/material.dart';
import 'package:tokuapp/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
        sound: "sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        enName: "one",
        jpName: "ichi"),
    Item(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        enName: "two",
        jpName: "Ni"),
    Item(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        enName: "three",
        jpName: "San"),
    Item(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        enName: "four",
        jpName: "shi"),
    Item(
        sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        enName: "five",
        jpName: "co"),
    Item(
        sound: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        enName: "six",
        jpName: "Roku"),
    Item(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        enName: "seven",
        jpName: "sebun"),
    Item(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        enName: "eight",
        jpName: "hachi"),
    Item(
        sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        enName: "nine",
        jpName: "Kyuu"),
    Item(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        enName: "ten",
        jpName: "juu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Numbers",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.orange[400],
            child: ListTile(
              leading: Container(
                  color: const Color(0xfffef6db),
                  width: 70,
                  height: 120,
                  child: Image.asset(
                    numbers[index].image,
                    fit: BoxFit.cover,
                  )),
              title: Text(
                numbers[index].enName,
                style: const TextStyle(fontSize: 23, color: Colors.white),
              ),
              subtitle: Text(numbers[index].jpName),
              subtitleTextStyle:
                  const TextStyle(fontSize: 23, color: Colors.white),
              trailing: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(numbers[index].sound));
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
