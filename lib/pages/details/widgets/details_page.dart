import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/core/styles.dart';
import 'package:tap_invest/pages/details/widgets/logo_list.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back to Deals'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AssetImages.companyLogo,
              alignment: Alignment.centerLeft,
            ),
            const Row(
              children: [
                Text(
                  'Agrizy',
                  style: TextStyle(color: Styles.textActiveColor),
                ),
                Icon(
                  Icons.keyboard_backspace,
                  color: Styles.textActiveColor,
                ),
                Text(
                  'Keshav Industries',
                  style: Styles.stoneTextStyles,
                ),
              ],
            ),
            const SizedBox(height: 6),
            const Text(
              'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1),
              ),
              height: 300,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: const [
                  Column(
                    children: [
                      Text('MIN INVT'),
                    ],
                  ),
                  Column(
                    children: [Text('TENURE')],
                  ),
                  Column(
                    children: [Text('NET YIELD')],
                  ),
                  Column(
                    children: [Text('RAISED')],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),

            //clients
            const LogoList(title: 'Clients'),
            const SizedBox(height: 20),
            //backed by
            const LogoList(title: 'Backed By'),
          ],
        ),
      ),
    );
  }
}
