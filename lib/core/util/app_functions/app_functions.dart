import 'package:flutter/material.dart';
class AppFunctions{

  static navigateTo({
    required context,
    required Widget navigatedScreen})=>
      Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=>
          navigatedScreen));

}

//
// spalsh -> onboard
