import 'package:flutter/material.dart';
import 'package:tic_tac_toe_ui/pages/game_page/game_page.dart';
import 'package:tic_tac_toe_ui/pages/home_page/home_page.dart';
import 'package:tic_tac_toe_ui/routes/routes_name.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      case homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case gamePage:
        return MaterialPageRoute(builder: (context) => GamePage());
    }
    
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('Page is not found'),
      ),
    );
  }
}
