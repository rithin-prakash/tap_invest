import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/core/assets_images.dart';

class AllDonePage extends StatelessWidget {
  const AllDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.greenColor,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: SvgPicture.asset(AssetImages.dots),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: Lottie.asset('assets/lottie/lottie1.json'),
          ),
          Positioned(
            top: 180,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff116631),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(40),
                  child: SvgPicture.asset(AssetImages.flag),
                ),
                const SizedBox(height: 20),
                const Text(
                  'All Done',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Redirecting you to Dashboard.',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
