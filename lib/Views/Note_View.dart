import 'package:flutter/material.dart';
import 'package:noteapp/Views/Widgts/AddNoteSheet.dart';
import 'package:noteapp/Views/Widgts/Appbar_note.dart';

import 'Widgts/ListViewCard.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteSheet();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)));
          },
          child: const Icon(Icons.add)),
      body: const Column(
        children: [
          AppbarNote(
            icon: Icons.search,
            text: 'Notes',
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(child: ListViewCard()),
        ],
      ),
    );
  }
}
