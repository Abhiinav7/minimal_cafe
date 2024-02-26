import 'package:minimal_cafe/components/bot_nav.dart';
import 'package:minimal_cafe/constants/colors.dart';
import 'package:minimal_cafe/pages/shopPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cartPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex=0;
  void navBar(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  final List<Widget> pages=[
    ShopPage(),

    CartPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: MyBottum(
        onTabChange: (int index) => navBar(index)),
      body:pages[selectedIndex],

    );
  }
}
