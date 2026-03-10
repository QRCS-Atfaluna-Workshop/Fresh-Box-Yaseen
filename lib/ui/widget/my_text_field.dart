import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? hint;
  final Widget? suffixIcon;
  final bool isPassword;
  const MyTextField({super.key, this.hint , this.suffixIcon , this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint ?? '',
        hintStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: suffixIcon

      ),
    );
  }
}
