import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPress;
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        CustomIcon(
          icon: icon,
          onPress: onPress,
        ),
      ],
    );
  }
}
