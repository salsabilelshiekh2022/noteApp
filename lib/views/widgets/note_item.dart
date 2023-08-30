import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/views/pages/edit_note_page.dart';

import '../../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  Widget adaptiveAction(
      {required BuildContext context,
      required VoidCallback onPressed,
      required Widget child}) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNotePage(note: note);
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.title,
                style: const TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  showAdaptiveDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog.adaptive(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      title: const Align(
                        child: Text(
                          'Delete note ',
                        ),
                      ),
                      content: const Text(
                          'Are you sure you want to delete this note?'),
                      actions: <Widget>[
                        adaptiveAction(
                          context: context,
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        adaptiveAction(
                          context: context,
                          onPressed: () {
                            note.delete();
                            BlocProvider.of<NotesCubit>(context).fetchAllData();
                            Navigator.pop(context);
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(color: Colors.red[600]),
                          ),
                        ),
                      ],
                    ),
                  );

                  BlocProvider.of<NotesCubit>(context).fetchAllData();
                },
                icon: const Icon(Icons.delete, size: 24, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              note.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
            ),
          ],
        ),
      ),
    )
        .animate()
        .fadeIn() // uses `Animate.defaultDuration`
        .scale() // inherits duration from fadeIn
        .move(delay: 300.ms, duration: 600.ms);
  }
}
