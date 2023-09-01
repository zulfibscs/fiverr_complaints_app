import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  TextEditingController _controller=TextEditingController();
  final  String  hintText;
  final IconData? suffixIcon;

   CustomTextFormField({super.key,required this.hintText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration:InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon!=null ? Icon(suffixIcon):null ,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(18)
        ),
        enabled:true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.black)
        ),
      ),
    );
  }
}
