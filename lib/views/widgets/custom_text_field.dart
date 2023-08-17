import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is require';
        } else {
          return null;
        }
      },
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      maxLines: maxLines,
    );
  }
}
