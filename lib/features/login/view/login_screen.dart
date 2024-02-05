import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocies_app/core/util/app_functions/app_functions.dart';
import 'package:grocies_app/core/util/app_images/app_images.dart';
import 'package:grocies_app/core/util/widgets/bottom_widget/bottom_widget.dart';

import '../../../core/util/app_colors/app_colors.dart';
import '../../../core/util/widgets/password_text_form_field_widget/password_text_form_field_widget.dart';
import '../../bottom_nav_bar/view/bottom_nav_bar_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding:  EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AppImages.carrotWithOrangeColorImage)),
              SizedBox(height: 20,),
              Text("Login",style: GoogleFonts.glory(
                color:Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 26,
              ),),
              Text("Enter your emails and password",
                style: GoogleFonts.glory(
                color:Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),),
                SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(

                  labelText: "Email",
                  labelStyle: GoogleFonts.glory(
                    color:Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              PasswordTextFormFieldWidget(),
              SizedBox(height: 20,),

              Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(onPressed: (){},
                      child: Text("Forgot Password?",
                        style: GoogleFonts.glory(
                    fontSize: 16,
                          color: Colors.black

                  ),))),
              SizedBox(height: 20,),

              BottomWidget(text: "Login", onTap: (){
                AppFunctions.navigateTo(context: context, navigatedScreen: BottomNavScreen());
              }),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                    style: GoogleFonts.glory(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),),
                  TextButton(onPressed: (){},
                      child: Text("Signup",
                        style: GoogleFonts.glory(
                            fontSize: 16,
                            color: AppColors.greenColor

                        ),))

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

