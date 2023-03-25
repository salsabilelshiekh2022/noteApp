import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            CustomAppBar(),
          ],
        ),
      ),
    ));
  }
}
