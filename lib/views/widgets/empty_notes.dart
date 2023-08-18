import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Empty-pana.png',
            width: double.infinity - 100,
            height: 400,
            fit: BoxFit.cover,
          ).animate().fade().scale(),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Empty',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          )
              .animate()
              .fadeIn() // uses `Animate.defaultDuration`
              .scale() // inherits duration from fadeIn
              .move(
                  delay: 300.ms,
                  duration: 600.ms) // runs after the above w/new duration

          ,
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You don't have any bookmark at this time ",
          )
              .animate()
              .fadeIn() // uses `Animate.defaultDuration`
              .scale() // inherits duration from fadeIn
              .move(delay: 300.ms, duration: 600.ms),
        ],
      ),
    );
  }
}
