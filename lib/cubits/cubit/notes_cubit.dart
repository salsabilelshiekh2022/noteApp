import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/constant.dart' as constants;
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllData() {
    var notesBox = Hive.box<NoteModel>(constants.notesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
