import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/pages/sign_contract/sign_contract_page.dart';

class PaymentDonePage extends StatefulWidget {
  const PaymentDonePage({super.key});

  @override
  State<PaymentDonePage> createState() => _PaymentDonePageState();
}

class _PaymentDonePageState extends State<PaymentDonePage> {
  @override
  void initState() {
    super.initState();

    _navigate();
  }

  _navigate() async {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const SignContractPage(),
        ),
      );
    });
  }

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
          )
        ],
      ),
    );
  }
}
