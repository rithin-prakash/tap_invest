import 'package:flutter/material.dart';

import 'package:tap_invest/core/styles.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Highlights',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              HighlightsContainer(),
              HighlightsContainer(),
            ],
          ),
        ),
      ],
    );
  }
}

class HighlightsContainer extends StatelessWidget {
  const HighlightsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 350,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.lightbulb,
            color: Styles.stoneColor,
          ),
          SizedBox(height: 8),
          Text(
              'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.')
        ],
      ),
    );
  }
}
