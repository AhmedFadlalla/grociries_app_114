import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PasswordTextFormFieldWidget extends StatefulWidget {
  const PasswordTextFormFieldWidget({super.key});

  @override
  State<PasswordTextFormFieldWidget> createState() => _PasswordTextFormFieldWidgetState();
}

class _PasswordTextFormFieldWidgetState extends State<PasswordTextFormFieldWidget> {

  bool isVisible=false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: (){
          setState(() {
            isVisible = !isVisible;
          });
        },
          icon: Icon(isVisible?Icons.visibility:Icons.visibility_off),),
        labelText: "Password",
        labelStyle: GoogleFonts.glory(
          color:Colors.grey,

          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}
