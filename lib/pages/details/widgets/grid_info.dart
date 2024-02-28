import 'package:flutter/material.dart';

class GridInfo extends StatelessWidget {
  const GridInfo({
    super.key,
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
  });

  final Widget first;
  final Widget second;
  final Widget third;
  final Widget fourth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD6D3D1).withOpacity(.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Colors.black12),
      ),
      height: 180,
      child: GridView.count(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 2,
        crossAxisCount: 2,
        children: [
          GridTile(
            child: Container(
              height: 90,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                  right: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
              ),
              child: first,
            ),
          ),
          GridTile(
            child: Container(
              height: 90,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
              ),
              child: second,
            ),
          ),
          GridTile(
            child: Container(
              height: 90,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
              ),
              child: third,
            ),
          ),
          GridTile(
            child: Container(
              height: 90,
              decoration: const BoxDecoration(),
              child: fourth,
            ),
          ),
        ],
      ),
    );
  }
}
