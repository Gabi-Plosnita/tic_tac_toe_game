import 'package:flutter/material.dart';
import 'package:tic_tac_toe_ui/pages/game_page/score_bar_widget.dart';
import 'package:tic_tac_toe_ui/pages/game_page/ui_board_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ScoreBar(),
              Flexible(
                child: BoardUi(),
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
