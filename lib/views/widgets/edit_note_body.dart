import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

import '../../models/note_model.dart';
import 'edit_note_list_view.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(
              onPress: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllData();
                Navigator.pop(context);
              },
              title: "Edit",
              icon: Icons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChange: (value) {
                title = value;
              },
              initialValue: widget.note.title,
              hintText: widget.note.title,
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomTextField(
              onChange: (value) {
                content = value;
              },
              initialValue: widget.note.subTitle,
              hintText: widget.note.subTitle,
              maxLines: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            EditNoteColorsList(
              note: widget.note,
            )
          ],
        ),
      ),
    );
  }
}
