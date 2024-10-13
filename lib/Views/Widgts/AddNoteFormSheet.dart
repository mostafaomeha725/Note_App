


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/add_note_cubit.dart';
import 'package:noteapp/model/note_model.dart';

import '../../cubit/notes_cubits/notes_cubit.dart';
import 'CustomButtom.dart';
import 'CustomTextField.dart';

class AddNoteFormSheet extends StatefulWidget {
  const AddNoteFormSheet({super.key});

  @override
  State<AddNoteFormSheet> createState() => _AddNoteFormSheetState();
}

class _AddNoteFormSheetState extends State<AddNoteFormSheet> {
    String? title , subtitle ;
    final formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
     double bottominset = MediaQuery.of(context).viewInsets.bottom ;
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        
        padding:EdgeInsets.only(bottom: bottominset),
        child: Column(
          children: [
         const  SizedBox(
              height: 30,
            ),
            CustomTextField(hint: 'Title', onSaved: (value) {
            title = value ;
          },),
         const   SizedBox(
              height: 18,
            ),
            CustomTextField(
              hint: 'Content',
              padding: const EdgeInsets.only( bottom: 40,left: 10,right: 10),
              onSaved: (value) {
                subtitle = value ;
              },
              maxLines: 7,
            ),
         const   SizedBox(
              height: 100,
            ),
            CustomButtom(
              onTap: () {
                 if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                   
                var notemodel = NoteModel(title: title!, subtitle: subtitle!, data: DateTime.now().toString(), color: Colors.red.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                BlocProvider.of<NotesCubit>(context).fetchAllnote();
                Navigator.pop(context);
                 }
              },
            ),
         
          ],
        ),
      ),
    );
  }
}
