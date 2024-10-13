

import 'package:flutter/material.dart';
import 'package:noteapp/Views/Helper/Constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap});
 final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
         width: MediaQuery.of(context).size.width,
         height: 50,
         decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
         ),
         child: const Center(child: Text('Add',
         style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
         ),
         ),),
        ),
      ),
    );
  }
}