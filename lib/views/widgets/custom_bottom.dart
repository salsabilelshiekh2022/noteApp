import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final bool isLoading;
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
          width: double.infinity,
          height: 55,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.black,
                    )
                  : Text(
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
