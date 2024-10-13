

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/Views/Edit_Note_View.dart';
import 'package:noteapp/cubit/notes_cubits/notes_cubit.dart';
import 'package:noteapp/model/note_model.dart';

class CustomCardNote extends StatelessWidget {
  const CustomCardNote({super.key , required this.note});

final NoteModel note ;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) {
                return  EditNoteView(note: note,);
              },),);
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffffcd7f),
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                 const   SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ListTile(
                    title:  Text( note.title , style: const TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                    ),),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 22),
                      child: Text(note.subtitle, style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 20,
                      ),),
                    ),
                    trailing: IconButton(onPressed: (){
                      note.delete() ;
                      BlocProvider.of<NotesCubit>(context).fetchAllnote();
                      },  icon: const Icon(FontAwesomeIcons.trash) ,iconSize: 25,color: Colors.black,),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 18 , horizontal: 20),
                   child: Text(note.data.toString().substring(0,16), style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 20,
                    ),),
                 ), 
               
                ],
              ),
            ),
          ),
          
        ),
        const  SizedBox(height: 10,),
      ],
    );
  }
} 