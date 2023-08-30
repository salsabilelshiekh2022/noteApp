import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/empty_notes.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';

import '../../cubits/cubit/notes_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Hive.box<NoteModel>(notesBox).isEmpty
                ? const EmptyNotes()
                : const Column(
                    children: [
                      CustomAppBar(
                        title: "Note",
                        icon: Icons.search,
                      ),
                      NotesListView(),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
