import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottum extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottum({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
          activeColor: Colors.grey[700],
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: [
GButton(icon: Icons.home,text: "Home"),
GButton(icon: Icons.shopping_bag_outlined,text: "Cart"),



          ]),
    );
  }
}
