import 'package:flutter/material.dart';

import 'package:tap_invest/pages/details/details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Invest',
      theme: ThemeData(
        primaryColor: const Color(0xFFFBFBF6),
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFBFBF6)),
        useMaterial3: true,
      ),
      home: const DetailsPage(),
    );
  }
}
