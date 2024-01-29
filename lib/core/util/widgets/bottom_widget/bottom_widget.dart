import 'package:flutter/material.dart';

import '../../app_colors/app_colors.dart';
class BottomWidget extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const BottomWidget({super.key,
  required this.text,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(55),
          backgroundColor: AppColors.greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

        ),
        child: Center(
          child: Text(text,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),),
        ));
  }
}
