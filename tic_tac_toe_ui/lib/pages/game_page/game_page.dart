import 'package:flutter/material.dart';
import 'package:tic_tac_toe_ui/pages/game_page/score_bar_widget.dart';
import 'package:tic_tac_toe_ui/pages/game_page/ui_board_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoardUi(),
    );
  }
}
