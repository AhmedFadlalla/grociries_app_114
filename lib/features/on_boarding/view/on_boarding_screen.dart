import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocies_app/core/util/app_colors/app_colors.dart';
import 'package:grocies_app/core/util/app_functions/app_functions.dart';
import 'package:grocies_app/core/util/app_images/app_images.dart';
import 'package:grocies_app/features/login/view/login_screen.dart';

import '../../../core/util/widgets/bottom_widget/bottom_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                image:
                    Image.asset(
                        AppImages.deliveryBackgroundOnBoarding).image,

              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(AppImages.carrotImage),
                SizedBox(height: 10,),
                Text("Welcome \n to our Store",
                textAlign: TextAlign.center,
                style: GoogleFonts.glory(
                  height: 0.9,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
                SizedBox(height: 10,),
                Text("Get your grociries as soon as possible in one hour",
                style: GoogleFonts.glory(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
                ),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BottomWidget(
                    onTap: (){
                      AppFunctions.navigateTo(context: context, navigatedScreen: LoginScreen());

                    },
                    text: "Get Started",
                  ),
                ),
                SizedBox(height: 35,),

              ],
            )
          ],
        ),
      ),
    );
  }
}
