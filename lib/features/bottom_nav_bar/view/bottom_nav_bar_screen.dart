import 'package:flutter/material.dart';
import 'package:grocies_app/core/util/app_colors/app_colors.dart';
import 'package:grocies_app/features/home/views/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

List screens=[
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
];
class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize:16 ,
        selectedItemColor: AppColors.greenColor,
        currentIndex: currentIndex,
        onTap: (value){
         setState(() {
           currentIndex=value;
         });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop,),label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Explor'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ) ,
      body:screens[currentIndex] ,
    );
  }
}
