import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      maxLines: maxLines,
    );
  }
}
