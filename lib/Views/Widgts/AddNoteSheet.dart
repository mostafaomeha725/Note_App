import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/add_note_cubit.dart';
import 'AddNoteFormSheet.dart';


class AddNoteSheet extends StatelessWidget {
 const  AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return const AddNoteFormSheet();
      },
    );
  }
}
