import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_invest/core/styles.dart';

class AmountContainer extends StatefulWidget {
  const AmountContainer({
    super.key,
    required this.controller,
    required this.done,
  });

  final TextEditingController controller;
  final VoidCallback done;

  @override
  State<AmountContainer> createState() => _AmountContainerState();
}

class _AmountContainerState extends State<AmountContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'ENTER AMOUNT',
          style: Styles.stoneTextStyles,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                    color: Styles.stoneColor,
                  ),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: widget.controller,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24, color: Styles.stoneColor),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'Min 50,000',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an amount';
                  } else if (int.parse(value) < 50000) {
                    return 'Minimum value is 5,00,000';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  widget.done();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
