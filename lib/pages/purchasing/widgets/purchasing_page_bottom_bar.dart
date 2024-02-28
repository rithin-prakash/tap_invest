import 'package:flutter/material.dart';

import 'package:swipeable_button/swipeable_button.dart';

import 'package:tap_invest/core/styles.dart';

class PurchasingPageBottombar extends StatelessWidget {
  const PurchasingPageBottombar({super.key, required this.onSwipe});

  final VoidCallback onSwipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Balance: ₹1,00,000',
                style: Styles.stoneTextStyles,
              ),
              Text(
                'Required: ₹0',
                style: Styles.stoneTextStyles,
              )
            ],
          ),
          const SizedBox(height: 5),
          SwipeableButton.simple(
            label: const Center(
              child: Text(
                "SWIPE TO PAY",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            height: 55.0,
            minThumbWidth: 55.0,
            oneTime: false,
            color: const Color(0xFFE4E4E7),
            thumbIcon: Icons.arrow_forward,
            thumbIconCompleted: Icons.arrow_forward,
            thumbColor: Styles.greenColor,
            thumbIconColor: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            onSwipe: onSwipe,
          )
          // SwipeableButton.simpleSlidable(
          //   thumbIconCompleted: Icons.arrow_forward,
          //   thumbIcon: Icons.arrow_forward,
          //   label: const Center(
          //     child: Text(
          //       "SWIPE TO PAY",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 18),
          //     ),
          //   ),
          //   height: 60.0,
          //   minThumbWidth: 60.0,
          //   oneTime: true,
          //   color: const Color(0xFFE4E4E7),
          //   thumbColor: Styles.greenColor,
          //   thumbIconColor: Colors.white,
          //   borderRadius: BorderRadius.circular(4.0),
          //   onSwipe: () {
          //     // Perform delete action.
          //   },
          // )
          // SwipeableButton(
          //   height: 60.0,
          //   minThumbWidth: 60.0,
          //   oneTime: true,
          //   label: const Text("SWIPE TO PAY"),
          //   color: const Color(0xFFE4E4E7),

          //   borderRadius: BorderRadius.circular(4.0),
          //   thumbBuilder: (BuildContext context, double swipedFraction,
          //           bool isComplete) =>
          //       Padding(
          //     padding: const EdgeInsets.all(2.0),
          //     child: DecoratedBox(
          //       decoration: BoxDecoration(
          //           color: Styles.greenColor,
          //           borderRadius: BorderRadius.circular(4.0)),
          //       child: const Icon(
          //         Icons.arrow_forward,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          //   onSwipe: () {
          //     // Perform delete action.
          //   },
          // )
          // SlidingWidget(
          //   backgroundShape: const BorderRadius.all(Radius.circular(4)),
          //   width: 350,
          //   height: 60,
          //   stickToEnd: true,
          //   backgroundColorEnd: Styles.greenColor,
          //   backgroundColor: const Color(0xFFE4E4E7),
          //   foregroundColor: Styles.greenColor,
          //   iconColor: Colors.white,
          //   label: 'SWIPE TO PAY',
          //   labelStyle:
          //       const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //   foregroundShape: const BorderRadius.all(Radius.circular(4)),
          //   shadow: const BoxShadow(color: Colors.transparent),
          //   action: () {},
          //   child: const Icon(
          //     Icons.arrow_forward,
          //     color: Colors.white,
          //   ),
          // )
        ],
      ),
    );
  }
}
