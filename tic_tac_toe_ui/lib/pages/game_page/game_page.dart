import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';
import 'package:tic_tac_toe_ui/pages/game_page/score_bar_widget.dart';
import 'package:tic_tac_toe_ui/pages/game_page/time_bar_widget.dart';
import 'package:tic_tac_toe_ui/pages/game_page/ui_board_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            BlocProvider.of<GameCubit>(context).resetGame();
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ScoreBar(),
              const TimeBar(),
              const Flexible(
                child: BoardUi(),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.white, // Background color
                ),
                child: IconButton(
                  onPressed: () {
                    BlocProvider.of<GameCubit>(context).resetGame();
                  },
                  icon: const Icon(Icons.refresh),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
