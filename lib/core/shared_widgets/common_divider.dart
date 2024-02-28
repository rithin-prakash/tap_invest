import 'package:flutter/material.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        Divider(),
        SizedBox(height: 20),
      ],
    );
  }
}
