import 'package:minimal_cafe/pages/home%20page.dart';
import 'package:flutter/material.dart';
import 'package:minimal_cafe/pages/splashScreen.dart';
import 'package:provider/provider.dart';

import 'models/foodShop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FoodShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Minimal Cofee',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Splash(),
      ),
    );
  }
}
