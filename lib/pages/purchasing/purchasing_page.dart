import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/core/shared_widgets/common_divider.dart';
import 'package:tap_invest/pages/purchasing/widgets/amount_container.dart';
import 'package:tap_invest/pages/purchasing/widgets/purchasing_page_bottom_bar.dart';

class PurchasingPage extends StatelessWidget {
  const PurchasingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: SvgPicture.asset(AssetImages.backButton),
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                    const CommonDivider(),
                    const SizedBox(height: 40),
                    const AmountContainer(),
                    const SizedBox(height: 80),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Returns'),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '₹',
                              style: Styles.stoneTextStyles,
                            ),
                            Text('-')
                          ],
                        )
                      ],
                    ),
                    const CommonDivider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Net Yield',
                                children: [
                                  TextSpan(
                                    text: ' IRR',
                                    style: TextStyle(color: Styles.greenColor),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.info_outline,
                              color: Styles.greenColor,
                              size: 18,
                            )
                          ],
                        ),
                        Text.rich(
                          TextSpan(
                            text: '13.11',
                            children: [
                              TextSpan(
                                  text: ' %', style: Styles.stoneTextStyles)
                            ],
                          ),
                        )
                      ],
                    ),
                    const CommonDivider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tenure'),
                        Text.rich(
                          TextSpan(
                            text: '61',
                            children: [
                              TextSpan(
                                text: ' days',
                                style: Styles.stoneTextStyles,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const PurchasingPageBottombar()
          ],
        ),
      ),
    );
  }
}
