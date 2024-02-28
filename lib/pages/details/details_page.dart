import 'package:flutter/material.dart';

import 'package:tap_invest/pages/details/widgets/company_details_container.dart';
import 'package:tap_invest/pages/details/widgets/key_metrics_container.dart';
import 'package:tap_invest/pages/details/widgets/logo_list.dart';
import 'package:tap_invest/pages/details/widgets/hightlights.dart';
import 'package:tap_invest/core/shared_widgets/common_divider.dart';
import 'package:tap_invest/pages/details/widgets/details_page_bottom_bar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBF6),
      appBar: AppBar(
        title: const Text('Back to Deals'),
      ),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CompanyDetailsContainer(),

                  CommonDivider(),

                  //clients
                  LogoList(title: 'Clients'),
                  SizedBox(height: 20),
                  //backed by
                  LogoList(title: 'Backed By'),

                  CommonDivider(),

                  //highlights
                  Highlights(),

                  CommonDivider(),

                  //key metrics
                  KeyMetricsContainer(),

                  CommonDivider()
                ],
              ),
            ),
          ),
          DetailsPageBottomBar()
        ],
      ),
    );
  }
}
