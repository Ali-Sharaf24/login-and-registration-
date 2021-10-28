import 'package:flutter/material.dart';
import 'package:test_app/Utilities/Constant.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    required this.controller,
    required this.label,
    required this.keyboard,
    required this.prefixIcon,
    required this.obscureText,
    this.suffixIcon,
  });

  final TextEditingController? controller;
  final String label;
  final TextInputType keyboard;
  final bool obscureText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelStyle: KTextLabelStyle,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xffc7b392),
        )),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
