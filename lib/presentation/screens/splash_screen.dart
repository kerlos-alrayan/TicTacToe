import 'package:flutter/material.dart';
import 'package:tic_tac_toe/presentation/screens/game_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => GameScreen()),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff002f63),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/splash_screen/clipart1436238.png', width: 250,)),
          SizedBox(height: 50,),
          Text(
            'Tic Tac Toe',
            style: TextStyle(
              fontFamily: 'Coiny',
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}