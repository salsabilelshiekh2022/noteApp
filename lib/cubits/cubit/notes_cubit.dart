import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';
import '../../constants/constant.dart' as constants;

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
