import 'package:flutter/material.dart';
import 'package:grocies_app/core/util/app_colors/app_colors.dart';
import 'package:grocies_app/core/util/app_functions/app_functions.dart';
import 'package:grocies_app/features/on_boarding/view/on_boarding_screen.dart';

import '../../../core/util/app_images/app_images.dart';
import '../../../core/util/app_colors/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    Future.delayed(Duration(seconds: 2),() {

      AppFunctions.navigateTo(
          context: context,
          navigatedScreen: OnBoardingScreen());
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Center(child: Image.asset(AppImages.nectarLogo),),
    );
  }
}
