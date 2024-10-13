

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/notes_cubits/notes_cubit.dart';
import 'package:noteapp/model/note_model.dart';

import 'Appbar_note.dart';
import 'CustomTextField.dart';

class BodyEditNoteView extends StatelessWidget {
  const BodyEditNoteView({super.key, required this.note});
final NoteModel note ;

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          AppbarNote(text: 'Edit Note', icon: Icons.check , onTap: () {
            note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllnote();
        Navigator.pop(context);
      },),
      const       SizedBox(height: 30,),
          CustomTextField(hint: note.title , onchange: (value) {
          note.title = value!  ;
          },),
      const      SizedBox(height: 18,),
          CustomTextField(hint: note.subtitle,padding: const EdgeInsets.only(bottom: 40, right: 10,left: 10),
          onchange: (value) {
            note.subtitle = value! ;
          },
          maxLines: 10,
          ),
           
        ],
      );
  }
}
