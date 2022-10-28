import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String button;
  final Color textColor;

  const DrawerButton({required this.button, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Container(
        height: 30,
        width: 216,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 7,
            horizontal: 16,
          ),
          child: Text(
            "$button",
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
