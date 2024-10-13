
import 'package:flutter/material.dart';
import 'package:noteapp/Views/Widgts/Custom_Search_Note.dart';

class AppbarNote extends StatelessWidget {
 const  AppbarNote({super.key , required this.text , required this.icon, this.onTap});
final String text ;
final IconData icon ;
final  void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:50 ,right: 20,left: 20),
      child: Row(
        children: [
        Text(
            text,
            style: const TextStyle(fontSize: 28),
            
          ),
        const  Spacer(),
          CustomSearchNote(icon:icon,onTap:onTap ,),
        ],
      ),
    );
  }
}

