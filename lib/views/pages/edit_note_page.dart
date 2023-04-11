import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/views/widgets/edit_note_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EditNoteBody());
  }
}
