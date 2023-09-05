import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart' as game_logic;
import 'package:tic_tac_toe_ui/pages/game_page/result_dialog_widget.dart';

class TimeBar extends StatelessWidget {
  const TimeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BlocBuilder<GameCubit, GameState>(
          builder: (context, state) {
            const totalMilliseconds = 5000; // state.totaltime
            final remainingMilliseconds = state.timeLeft;
      
            final percentage = remainingMilliseconds / totalMilliseconds;
      
            if (remainingMilliseconds <= 0) {
              game_logic.State result =
                  BlocProvider.of<GameCubit>(context).getGameResult();
              if (result != game_logic.State.playing) {
                Future.delayed(Duration.zero, () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return ResultDialogWidget(result: result);
                    },
                  );
                });
              }
            }
      
            return LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation<Color>(
                (state.turn == game_logic.Piece.x) ? Colors.blue : Colors.orange,
              ),
            );
          },
        ),
      ),
    );
  }
}
