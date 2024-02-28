import 'package:flutter/material.dart';

import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/pages/details/widgets/grid_info.dart';

class KeyMetricsContainer extends StatelessWidget {
  const KeyMetricsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Key Metrics',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          const SizedBox(height: 20),
          const ChipList(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GridInfo(
              first: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ACTIVE DEALS',
                    style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                  ),
                  Text.rich(
                    TextSpan(
                      text: '6',
                      style: Styles.stoneTextStyles
                          .copyWith(fontSize: 16, color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' of 18',
                          style: Styles.stoneTextStyles.copyWith(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              second: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'RAISED',
                    style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                  ),
                  Text.rich(
                    TextSpan(
                      text: '₹ ',
                      style: Styles.stoneTextStyles.copyWith(fontSize: 16),
                      children: [
                        TextSpan(
                          text: '6.94',
                          style: Styles.stoneTextStyles
                              .copyWith(fontSize: 16, color: Colors.black),
                        ),
                        TextSpan(
                          text: ' Cr',
                          style: Styles.stoneTextStyles.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              third: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MATURED DEALS',
                    style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                  ),
                  Text.rich(
                    TextSpan(
                      text: '12',
                      style: Styles.stoneTextStyles
                          .copyWith(fontSize: 16, color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' of 18',
                          style: Styles.stoneTextStyles.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              fourth: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ON TIME PAYMENT',
                    style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                  ),
                  Text.rich(
                    TextSpan(
                      text: '100',
                      style: Styles.stoneTextStyles
                          .copyWith(fontSize: 16, color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' %',
                          style: Styles.stoneTextStyles.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChipList extends StatefulWidget {
  const ChipList({super.key});

  @override
  State<ChipList> createState() => _ChipListState();
}

class _ChipListState extends State<ChipList> {
  final cList = const ['FUNDING', 'TRACTION', 'FINANCIALS', 'COMPETITION'];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: cList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          return InkWell(
            onTap: () {
              setState(() {
                activeIndex = i;
              });
            },
            child: Container(
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: activeIndex == i
                    ? Styles.greenColor
                    : Styles.stoneColor.withOpacity(.2),
              ),
              child: Center(
                child: Text(
                  cList[i],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: activeIndex == i ? Colors.white : Styles.stoneColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
