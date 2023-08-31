import 'package:flutter/material.dart';
import 'package:tic_tac_toe_ui/pages/game_page.dart';
import 'package:tic_tac_toe_ui/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GamePage(),
        ),
      );
  }
}
