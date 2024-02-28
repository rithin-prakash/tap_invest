import 'package:flutter/material.dart';

import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/pages/all_done/all_done_page.dart';
import 'package:tap_invest/core/shared_widgets/button_normal.dart';

class SignContractPage extends StatelessWidget {
  const SignContractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetImages.contractPng),
            const SizedBox(height: 12),
            ButtonNormal(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AllDonePage(),
                  ),
                );
              },
              title: 'Sign Contract',
            )
          ],
        ),
      ),
    );
  }
}
