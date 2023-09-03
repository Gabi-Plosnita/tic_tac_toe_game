import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart' as game_logic;

class ScoreBar extends StatefulWidget {
  const ScoreBar({super.key});

  @override
  State<ScoreBar> createState() => _ScoreBarState();
}

class _ScoreBarState extends State<ScoreBar> {
  int xWins = 0;
  int oWins = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 30,
          child: Image.asset(
            'assets/X_transparent.png',
            fit: BoxFit.contain,
          ),
        ),
        BlocBuilder<GameCubit, GameState>(builder: (context, state) {
          if (state.gameState == game_logic.State.wonByX) {
            xWins++;
          } else if (state.gameState == game_logic.State.wonByO) {
            oWins++;
          }
          return Container(
            height: 40,
            width: 100,
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
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$xWins',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '-',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$oWins',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }),
        SizedBox(
          height: 30,
          child: Image.asset(
            'assets/O_transparent.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
