part of 'add_notes_cubit.dart';

abstract class NotesState {}

class NoteInitial extends NotesState {}

class NoteLoding extends NotesState {}

class Notesucses extends NotesState {}

class Notefailure extends NotesState {
  final String errmessage;

  Notefailure(this.errmessage);
}
