import 'package:animatedmenu/components/CustomDrawer.dart';
import 'package:animatedmenu/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomDrawer(),
          HomeScreen(),
        ],
      ),
    );
  }
}
