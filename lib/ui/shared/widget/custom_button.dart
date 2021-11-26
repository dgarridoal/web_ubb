import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final IconData icon;
  const ButtonCustom({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 27,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
