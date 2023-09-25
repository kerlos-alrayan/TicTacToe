import 'package:flutter/material.dart';
import 'package:tic_tac_toe/presentation/screens/game_screen.dart';
import 'package:tic_tac_toe/presentation/screens/splash_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
