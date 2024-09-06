class Item {
  final String image;
  final String jpName;
  final String enName;
  final String sound;

  const Item({
    required this.image,
    required this.enName,
    required this.jpName,
    required this.sound,
  });
}

class Phrases {
  final String jpName;
  final String enName;
  final String sound;

  const Phrases({
    required this.enName,
    required this.jpName,
    required this.sound,
  });
}
