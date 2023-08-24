import 'dart:io';

import 'package:flutter/material.dart';

class trainSkillsModel {
  final String image;

  final String rank;
  final String name;
  final String coin;
  final String coinIcon;
  trainSkillsModel({
    required this.image,
    required this.rank,
    required this.name,
    required this.coin,
    required this.coinIcon,
  });
}

List<trainSkillsModel> trainskills = [
  trainSkillsModel(
      image: 'assets/images/game.jpg',
      rank: "Beginner",
      name: "Entry",
      coin: '10',
      coinIcon: 'assets/svg_img/golden_coin.svg'),
  trainSkillsModel(
      image: 'assets/images/game.jpg',
      rank: "Beginner",
      name: "Entry",
      coin: '10',
      coinIcon: 'assets/svg_img/golden_coin.svg')
];
final List<Color> colorPalette = [
  Colors.orange,
  Colors.grey,
  Colors.purpleAccent,
];

final List<Color> textcolorPalette = [
  Colors.yellow,
  Colors.blueGrey,
  Colors.purple,
];

final List<Color> scorecolorPalette = [
  Colors.blueGrey,
  Colors.blueGrey,
  Colors.blueGrey,
];
