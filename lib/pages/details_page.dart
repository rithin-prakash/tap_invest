import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back to Deals'),
      ),
      body: Column(
        children: [
          SvgPicture.asset(AssetImages.companyLogo),
          Text('Agrizy'),
          Text('Keshav Industries'),
          Text(
              'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.'),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1),
            ),
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
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
          )
        ],
      ),
    );
  }
}
