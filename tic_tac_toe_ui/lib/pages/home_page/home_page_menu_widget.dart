import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';
import 'package:tic_tac_toe_ui/pages/home_page/difficulty_widget.dart';
import 'package:tic_tac_toe_ui/routes/routes_name.dart';

class HomePageMenu extends StatelessWidget {
  const HomePageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                //barrierDismissible: false,
                builder: (BuildContext context) {
                  return DifficultyDialogWidget();
                },
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fixedSize: const Size(200, 50),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/human_icon.png',
                  height: 30,
                ),
                const Text(
                  'VS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Image.asset(
                  'assets/robot_icon.png',
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<GameCubit>(context).resetGame();
            BlocProvider.of<GameCubit>(context)
                .setStrategy(Strategy.playerVsPlayer);
            Navigator.pushNamed(context, gamePage);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            fixedSize: const Size(200, 50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/human_icon.png',
                height: 30,
              ),
              const Text(
                'VS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Image.asset(
                'assets/human_icon.png',
                height: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
