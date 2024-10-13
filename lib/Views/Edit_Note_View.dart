
import 'package:flutter/material.dart';
import 'package:noteapp/model/note_model.dart';
import 'Widgts/body_Edit_Note_View.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
final NoteModel note ;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BodyEditNoteView(note:widget.note ,)
    );
  }
}
