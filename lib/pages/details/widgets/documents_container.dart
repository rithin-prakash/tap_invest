import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:tap_invest/core/assets_images.dart';
import 'package:tap_invest/core/styles.dart';

class DocumentsContainer extends StatelessWidget {
  const DocumentsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Documents',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          const SizedBox(height: 20),
          const DocumetsItem(
            assetName: AssetImages.doc1,
            title: 'Invoice Discounting Contract',
            decs:
                'All the legalese surrounding this deal and how it relates to you.',
          ),
          const SizedBox(height: 20),
          const DocumetsItem(
            assetName: AssetImages.doc2,
            title: 'Company Pitch Deck',
            decs:
                'Read more about the company and see how they pitch to investors.',
          ),
        ],
      ),
    );
  }
}

class DocumetsItem extends StatelessWidget {
  const DocumetsItem({
    super.key,
    required this.assetName,
    required this.title,
    required this.decs,
  });

  final String assetName;
  final String title;
  final String decs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: .5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(assetName),
          const SizedBox(height: 14),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  decs,
                  style: Styles.stoneTextStyles,
                ),
              ),
              SvgPicture.asset(AssetImages.download)
            ],
          ),
        ],
      ),
    );
  }
}
