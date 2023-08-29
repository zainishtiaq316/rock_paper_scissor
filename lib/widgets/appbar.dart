import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
