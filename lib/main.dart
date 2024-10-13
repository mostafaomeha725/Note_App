import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Views/Helper/Constants.dart';
import 'package:noteapp/Views/Note_View.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/cubit/add_note_cubit.dart';
import 'package:noteapp/cubit/notes_cubits/notes_cubit.dart';
import 'Simple_bloc_observe.dart';
import 'model/note_model.dart';

void main() async {
  Bloc.observer = Simpleblocobserve();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
        BlocProvider(
          create: (context) => NotesCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NoteView(),
      ),
    );
  }
}
