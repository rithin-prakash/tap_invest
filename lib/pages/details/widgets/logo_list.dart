import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';

class LogoList extends StatelessWidget {
  const LogoList({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                LogoContainer(child: SvgPicture.asset(AssetImages.googleLogo)),
                LogoContainer(child: SvgPicture.asset(AssetImages.googleLogo)),
                LogoContainer(child: SvgPicture.asset(AssetImages.googleLogo)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LogoContainer extends StatelessWidget {
  const LogoContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: child,
    );
  }
}
