import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/scoreitem.dart';
import '../models/trainskills.dart';

class menuScreen extends StatelessWidget {
  const menuScreen({Key? key}) : super(key: key);

  final Color remainingColor = Colors.white;
  final Color textColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.only(top: 0, left: 0, right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 15, right: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar_img.jpg'),
                    radius: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Player 1',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Beginner',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 7),
                        SvgPicture.asset(
                          'assets/svg_img/purple_diamond.svg',
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '40',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.yellow.shade700,
                          ),
                        ),
                        SizedBox(width: 7),
                        SvgPicture.asset(
                          'assets/svg_img/golden_coin.svg',
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 100),
                          // Iterate through data and create containers
                          for (var index = 0; index < data.length; index++)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: index < colorPalette.length
                                      ? colorPalette[index]
                                      : remainingColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    bottom: 8,
                                    left: 12,
                                    right: 12,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          data[index].imagePath,
                                        ),
                                        radius: 20,
                                      ),
                                      Text(
                                        data[index].name,
                                        style: TextStyle(
                                          color: index < textcolorPalette.length
                                              ? textcolorPalette[index]
                                              : textColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        data[index].score.toString(),
                                        style: TextStyle(
                                          color:
                                              index < scorecolorPalette.length
                                                  ? scorecolorPalette[index]
                                                  : textColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        '${data[index].percentage}%',
                                        style: TextStyle(
                                          color:
                                              index < scorecolorPalette.length
                                                  ? scorecolorPalette[index]
                                                  : textColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -70,
                    left: 0,
                    right: 0,
                    child: ClipRect(
                      child: Image.asset(
                        'assets/images/achievements.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
