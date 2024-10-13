import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/notes_cubits/notes_cubit.dart';
import 'package:noteapp/model/note_model.dart';

import 'Custom_Card_Note.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({super.key});

  @override
  Widget build(BuildContext context) {
       BlocProvider.of<NotesCubit>(context).fetchAllnote();
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
     List<NoteModel> readnote = BlocProvider.of<NotesCubit>(context).readnote! ;
        return ListView.builder(
        itemCount: readnote.length ,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return  CustomCardNote(note: readnote[index],);
          },
        );
      },
    );
  }
}
