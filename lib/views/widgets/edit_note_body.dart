import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            CustomAppBar(
              title: "Edit",
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              hintText: 'title',
            ),
            SizedBox(
              height: 16.0,
            ),
            CustomTextField(
              hintText: 'contect',
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}
