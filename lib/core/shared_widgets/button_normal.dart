import 'package:flutter/material.dart';

class ButtonNormal extends StatelessWidget {
  const ButtonNormal({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xff16A34A),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF15803D),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
