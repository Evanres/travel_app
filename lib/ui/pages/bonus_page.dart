import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image_card.png'))),
        child: Column(
          children: [],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [bonusCard()],
      ),
    );
  }
}
