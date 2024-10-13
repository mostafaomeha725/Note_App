
import 'package:flutter/material.dart';

class CustomSearchNote extends StatelessWidget {
  const CustomSearchNote({super.key , required this.icon , this.onTap});
final IconData icon ; 
final void Function()?  onTap ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
      width: 57,
      height: 60,
      decoration: const BoxDecoration(
         color: Color(0xff3c3b3c),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child:  Center(child: Icon(icon, size: 37,),),
      ),
    );
  }
} 