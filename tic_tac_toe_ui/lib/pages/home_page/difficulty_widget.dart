import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart' as game_logic;
import 'package:tic_tac_toe_ui/routes/routes_name.dart';

class DifficultyDialogWidget extends StatelessWidget {
  const DifficultyDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<GameCubit>(context).resetGame();
                BlocProvider.of<GameCubit>(context)
                    .setStrategy(game_logic.Strategy.easy);
                Navigator.of(context).pop();
                Navigator.pushNamed(context, gamePage);
              },
              child: Image.asset(
                'assets/easy_icon.png',
                height: 40,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<GameCubit>(context).resetGame();
                BlocProvider.of<GameCubit>(context)
                    .setStrategy(game_logic.Strategy.medium);
                Navigator.of(context).pop();
                Navigator.pushNamed(context, gamePage);
              },
              child: Image.asset(
                'assets/medium_icon.png',
                height: 40,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<GameCubit>(context).resetGame();
                BlocProvider.of<GameCubit>(context)
                    .setStrategy(game_logic.Strategy.impossible);
                Navigator.of(context).pop();
                Navigator.pushNamed(context, gamePage);
              },
              child: Image.asset(
                'assets/impossible_icon.png',
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
