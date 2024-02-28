import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/core/shared_widgets/common_divider.dart';
import 'package:tap_invest/pages/purchasing/widgets/amount_container.dart';
import 'package:tap_invest/pages/purchasing/widgets/purchasing_details.dart';
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
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PurchasingDetails(),
                    CommonDivider(),
                    SizedBox(height: 40),
                    AmountContainer(),
                    SizedBox(height: 80),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
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
                    ),
                    CommonDivider(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
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
                                      style:
                                          TextStyle(color: Styles.greenColor),
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
                    ),
                    CommonDivider(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
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
                      ),
                    )
                  ],
                ),
              ),
            ),
            PurchasingPageBottombar()
          ],
        ),
      ),
    );
  }
}
