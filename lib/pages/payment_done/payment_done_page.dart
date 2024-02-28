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
          const Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: LottieAnimation(),
          ),
          const Positioned(
            top: 180,
            right: 0,
            left: 0,
            child: PaymentDoneContainer(),
          )
        ],
      ),
    );
  }
}

class PaymentDoneContainer extends StatefulWidget {
  const PaymentDoneContainer({super.key});

  @override
  State<PaymentDoneContainer> createState() => _PaymentDoneContainerState();
}

class _PaymentDoneContainerState extends State<PaymentDoneContainer> {
  String _title = 'Payment done';
  String _sub1 = 'You are almost there!';
  String _sub2 = 'Do not leave this page, or press the back button';

  _chnageTitile() {
    setState(() {
      _title = '';
      _sub1 = '';
      _sub2 = '';
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _title = 'Generating Report';
        _sub1 = 'You are almost there!';
        _sub2 = 'Do not leave this page, or press the back button';
      });

      _navigate();
    });
  }

  _navigate() async {
    Future.delayed(const Duration(seconds: 3), () {
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
    return Column(
      children: [
        AnimatingContainer(done: () {
          _chnageTitile();
        }),
        const SizedBox(height: 20),
        Text(
          _title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          _sub1,
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          _sub2,
          style: const TextStyle(
            color: Colors.white60,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lottie/lottie1.json',
      controller: _controller,
      onLoaded: (composition) {
        _controller
          ..duration = composition.duration
          ..repeat();
      },
    );
  }
}

class AnimatingContainer extends StatefulWidget {
  const AnimatingContainer({super.key, required this.done});

  final VoidCallback done;

  @override
  State<AnimatingContainer> createState() => _AnimatingContainerState();
}

class _AnimatingContainerState extends State<AnimatingContainer>
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
      if (_controller.isCompleted) _generateReportAnimate();
    });
  }

  _generateReportAnimate() {
    widget.done();

    setState(() {
      _h = 0;
      _w = 0;
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        assetName = AssetImages.report;
        _h = 48;
        _w = 48;
      });
    });
  }

  double _h = 48;
  double _w = 48;

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  String assetName = AssetImages.verified;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: AnimatedContainer(
              width: _w,
              height: _h,
              duration: const Duration(seconds: 1),
              child: SvgPicture.asset(assetName),
            ),
          ),
          if (!_controller.isCompleted)
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
    });

    Future.delayed(const Duration(seconds: 3), () {
      widget.animated();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
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
