import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/pages/details/widgets/grid_info.dart';

class CompanyDetailsContainer extends StatelessWidget {
  const CompanyDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            AssetImages.companyLogo,
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Agrizy',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const Icon(
                Icons.keyboard_backspace,
                color: Styles.stoneColor,
              ),
              Text(
                'Keshav Industries',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Styles.stoneColor),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
            style: TextStyle(color: Styles.stoneColor),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),

          //gridinfo
          GridInfo(
            first: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MIN INVT',
                  style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                ),
                Text.rich(
                  TextSpan(
                    text: '₹ ',
                    style: Styles.stoneTextStyles.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                        text: '1',
                        style: Styles.stoneTextStyles
                            .copyWith(fontSize: 16, color: Colors.black),
                      ),
                      TextSpan(
                        text: ' Lakh',
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
                  'TENURE',
                  style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                ),
                Text.rich(
                  TextSpan(
                    text: '61',
                    style: Styles.stoneTextStyles
                        .copyWith(fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(
                        text: ' days',
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
                  'NET YIELD',
                  style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                ),
                Text.rich(
                  TextSpan(
                    text: '13.23',
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
            fourth: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'RAISED',
                  style: Styles.stoneTextStyles.copyWith(fontSize: 14),
                ),
                Text.rich(
                  TextSpan(
                    text: '70',
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
        ],
      ),
    );
  }
}
