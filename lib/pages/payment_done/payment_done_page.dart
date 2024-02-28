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

class _PaymentDonePageState extends State<PaymentDonePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );
  }

  _animateRotation() {
    _controller.forward();

    _controller.addListener(() {
      if (_controller.isCompleted) _controller.repeat();
    });
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
  void dispose() {
    super.dispose();

    _controller.dispose();
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
                  child: Stack(
                    children: [
                      RotationTransition(
                        turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                        child: SvgPicture.asset(AssetImages.verified),
                      ),
                      Positioned(
                        bottom: 0,
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Tick(
                          animated: () {
                            _animateRotation();
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Payment done',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'You are almost there!',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Do not leave this page, or press the back button',
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

class Tick extends StatefulWidget {
  const Tick({
    super.key,
    required this.animated,
  });

  final VoidCallback animated;

  @override
  State<Tick> createState() => _TickState();
}

class _TickState extends State<Tick> {
  @override
  void initState() {
    super.initState();

    _animateTick();
  }

  double _width = 0;
  double _height = 0;

  _animateTick() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _width = 36;
        _height = 36;
      });

      widget.animated();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      width: _width,
      height: _height,
      curve: Curves.easeIn,
      child: Icon(
        Icons.done,
        color: const Color(0xff116631),
        size: _height.toDouble(),
      ),
    );
  }
}
