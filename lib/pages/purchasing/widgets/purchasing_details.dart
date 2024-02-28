import 'package:flutter/material.dart';

import 'package:tap_invest/core/styles.dart';

class PurchasingDetails extends StatelessWidget {
  const PurchasingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Purchasing',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Row(
            children: [
              Text(
                'Agrizy',
                style: Styles.stoneTextStyles,
              ),
              SizedBox(width: 3),
              Icon(
                Icons.keyboard_backspace,
                color: Styles.stoneColor,
              ),
              SizedBox(width: 3),
              Text(
                'Keshav Industries',
                style: Styles.stoneTextStyles,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
