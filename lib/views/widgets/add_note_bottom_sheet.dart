import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: const [
          SizedBox(
            height: 36,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
