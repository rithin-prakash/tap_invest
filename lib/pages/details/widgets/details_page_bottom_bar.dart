import 'package:flutter/material.dart';

import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/core/shared_widgets/button_normal.dart';
import 'package:tap_invest/pages/purchasing/purchasing_page.dart';

class DetailsPageBottomBar extends StatelessWidget {
  const DetailsPageBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xFFFBFBF6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FILLED',
                style: Styles.stoneTextStyles.copyWith(fontSize: 12),
              ),
              const Text(
                '30%',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          ButtonNormal(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PurchasingPage()));
            },
            title: 'Tap to Invest',
          ),
        ],
      ),
    );
  }
}
