import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: const Color.fromARGB(137, 36, 33, 33)),
        child: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
