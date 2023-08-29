import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/appbar.dart';
import '../widgets/trainskillswidget.dart';

class playScreen extends StatefulWidget {
  @override
  _playScreenState createState() => _playScreenState();
}

class _playScreenState extends State<playScreen> {
  bool isListVisible = false; // Track the visibility of the list

  void toggleListVisibility() {
    setState(() {
      isListVisible = !isListVisible; // Toggle the visibility state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 15, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(),
            SizedBox(height: 40),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tournament",
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 20),
                          ),
                          Text(
                            "Many rounds and cool prizes",
                            style: TextStyle(
                                color: Colors.orangeAccent, fontSize: 14),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: toggleListVisibility,
                          child: Center(
                            child: Icon(
                              isListVisible
                                  ? Icons.arrow_drop_up_outlined
                                  : Icons.arrow_drop_down_outlined,
                              color: Colors.blueAccent,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12, bottom: 12, right: 12, left: 12),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/avatar_img.jpg',
                              width: 30,
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fight Battle',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            left: 5,
                                            bottom: 5,
                                            right: 5),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          children: [
                                            Text('Entry 1',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.yellow.shade700,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(width: 3),
                                            SvgPicture.asset(
                                              'assets/svg_img/golden_coin.svg',
                                              height: 15,
                                              width: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Prizes",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "2",
                                        style: TextStyle(
                                            color: Colors.yellow.shade700,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 7),
                                      SvgPicture.asset(
                                        'assets/svg_img/golden_coin.svg',
                                        height: 18,
                                        width: 18,
                                      ),
                                      SizedBox(width: 7),
                                      Text('5',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.purple,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      SizedBox(width: 7),
                                      SvgPicture.asset(
                                        'assets/svg_img/purple_diamond.svg',
                                        height: 18,
                                        width: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[300],
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child:
                                      Icon(Icons.play_arrow, color: Colors.red),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isListVisible,
                    child: Column(
                      children: [
                        Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, right: 12, left: 12),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avatar_img.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fight Battle',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 5,
                                                left: 5,
                                                bottom: 5,
                                                right: 5),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              children: [
                                                Text('Entry 1',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                                SizedBox(width: 3),
                                                SvgPicture.asset(
                                                  'assets/svg_img/golden_coin.svg',
                                                  height: 15,
                                                  width: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Prizes",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.yellow.shade700,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 7),
                                          SvgPicture.asset(
                                            'assets/svg_img/golden_coin.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          SizedBox(width: 7),
                                          Text('5',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.purple,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          SizedBox(width: 7),
                                          SvgPicture.asset(
                                            'assets/svg_img/purple_diamond.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[300],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Icon(Icons.play_arrow,
                                          color: Colors.red),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, right: 12, left: 12),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avatar_img.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fight Battle',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 5,
                                                left: 5,
                                                bottom: 5,
                                                right: 5),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              children: [
                                                Text('Entry 1',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                                SizedBox(width: 3),
                                                SvgPicture.asset(
                                                  'assets/svg_img/golden_coin.svg',
                                                  height: 15,
                                                  width: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Prizes",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.yellow.shade700,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 7),
                                          SvgPicture.asset(
                                            'assets/svg_img/golden_coin.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          SizedBox(width: 7),
                                          Text('5',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.purple,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          SizedBox(width: 7),
                                          SvgPicture.asset(
                                            'assets/svg_img/purple_diamond.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[300],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Icon(Icons.play_arrow,
                                          color: Colors.red),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, right: 12, left: 12),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avatar_img.jpg',
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Fight Battle',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 5,
                                                left: 5,
                                                bottom: 5,
                                                right: 5),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              children: [
                                                Text('Entry 1',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                                SizedBox(width: 3),
                                                SvgPicture.asset(
                                                  'assets/svg_img/golden_coin.svg',
                                                  height: 15,
                                                  width: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Prizes",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.yellow.shade700,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 7),
                                          SvgPicture.asset(
                                            'assets/svg_img/golden_coin.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                          SizedBox(width: 7),
                                          Text('5',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.purple,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          SizedBox(width: 7),
                                          SvgPicture.asset(
                                            'assets/svg_img/purple_diamond.svg',
                                            height: 18,
                                            width: 18,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[300],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Icon(Icons.play_arrow,
                                          color: Colors.red),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Train your Skills",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
