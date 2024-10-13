import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Views/Helper/Constants.dart';
import 'package:noteapp/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
List<NoteModel>? readnote ;
  fetchAllnote()
  {
    var notebox = Hive.box<NoteModel>(kNoteBox);
  readnote  =  notebox.values.toList();
     emit(NotesSuccess());
  }
}
