import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/core/shared_widgets/common_divider.dart';
import 'package:tap_invest/pages/payment_done/payment_done_page.dart';
import 'package:tap_invest/pages/purchasing/widgets/amount_container.dart';
import 'package:tap_invest/pages/purchasing/widgets/purchasing_details.dart';
import 'package:tap_invest/pages/purchasing/widgets/purchasing_page_bottom_bar.dart';

class PurchasingPage extends StatefulWidget {
  const PurchasingPage({super.key});

  @override
  State<PurchasingPage> createState() => _PurchasingPageState();
}

class _PurchasingPageState extends State<PurchasingPage> {
  final _formKey = GlobalKey<FormState>();

  final amountController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    amountController.dispose();
  }

  String value = '-';

  _calculateReturns() {
    setState(() {
      value = ((int.parse(amountController.text) * 13.11) / 100 +
              int.parse(amountController.text))
          .toString();
    });
  }

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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PurchasingDetails(),
                      const CommonDivider(),
                      const SizedBox(height: 40),
                      AmountContainer(
                        controller: amountController,
                        done: () {
                          if (_formKey.currentState!.validate()) {
                            _calculateReturns();
                          }
                        },
                      ),
                      const SizedBox(height: 80),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Total Returns'),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  '₹ ',
                                  style: Styles.stoneTextStyles,
                                ),
                                Text(
                                  value,
                                  style: const TextStyle(fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const CommonDivider(),
                      const Padding(
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
                                style: TextStyle(fontSize: 18),
                                children: [
                                  TextSpan(
                                      text: ' %', style: Styles.stoneTextStyles)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const CommonDivider(),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tenure'),
                            Text.rich(
                              TextSpan(
                                text: '61',
                                style: TextStyle(fontSize: 18),
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
              PurchasingPageBottombar(
                onSwipe: () {
                  if (!_formKey.currentState!.validate()) {
                  } else {
                    _calculateReturns();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const PaymentDonePage(),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
