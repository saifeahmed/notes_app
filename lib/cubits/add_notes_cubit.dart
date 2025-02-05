import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<NotesState> {
  AddNotesCubit() : super(NoteInitial());
}
