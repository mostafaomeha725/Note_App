

import 'package:flutter/material.dart';
import 'package:noteapp/Views/Helper/Constants.dart';

class CustomTextField extends StatelessWidget {
const  CustomTextField({super.key,required this.hint ,  this.padding , this.onSaved, this.onchange, this.maxLines});
final String hint ;
final EdgeInsetsGeometry? padding ;
final void Function(String?)? onSaved ;
final void Function(String?)? onchange ;
final int? maxLines ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 16.0 ),
      child: TextFormField(
        maxLines: maxLines,
        onChanged: onchange,
        onSaved: onSaved,
        validator: (value) {
            if (value == null || value.isEmpty) {
                    return 'Field is required';
                  }
                 else 
                 { return null;
                 }
        },
        style: const TextStyle(color: kPrimaryColor),
       cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          contentPadding: padding,
          hintText: hint ,
          hintStyle:  TextStyle(color:kPrimaryColor.withOpacity(0.4)),
          border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white ,),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: kPrimaryColor),
            ),
        ),
        
      ),
    );
  }
} 