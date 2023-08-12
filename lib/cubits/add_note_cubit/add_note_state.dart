part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteCubitInitial extends AddNoteState {}

class AddNoteCubitLoading extends AddNoteState {}

class AddNoteCubitSuccess extends AddNoteState {}

class AddNoteCubitFailer extends AddNoteState {
  final String errorMessage;

  AddNoteCubitFailer(this.errorMessage);
}
