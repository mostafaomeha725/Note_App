import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Views/Helper/Constants.dart';
import 'package:noteapp/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async 
  {
    emit(AddNoteLoading());
  try {
  var notebox = Hive.box<NoteModel>(kNoteBox);
   await notebox.add(note);
   emit(AddNoteSuccess());
 
} catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}
