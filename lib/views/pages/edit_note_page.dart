import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_body.dart';

import '../../models/note_model.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteBody(note: note));
  }
}
