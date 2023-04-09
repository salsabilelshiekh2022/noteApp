import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
          width: double.infinity,
          height: 55,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'Add',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
          )),
    );
  }
}
