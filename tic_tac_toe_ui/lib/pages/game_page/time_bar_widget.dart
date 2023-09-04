import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';

class TimeBar extends StatelessWidget {
  const TimeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          final totalMilliseconds = 5000;
          final remainingMilliseconds = state.timeLeft;
    
          final percentage = remainingMilliseconds / totalMilliseconds;
    
          return LinearProgressIndicator(
            value: 1 - percentage, // Reverse the value to represent time running out
            backgroundColor: Colors.grey, // Background color
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Bar color
          );
        },
      ),
    );
  }
}
