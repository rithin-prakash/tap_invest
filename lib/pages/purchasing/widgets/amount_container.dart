import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountContainer extends StatelessWidget {
  const AmountContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Enter Amount'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: 24),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'Min 50,000',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
