import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart' as game_logic;
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';
import 'package:tic_tac_toe_ui/routes/routes_name.dart';

class ResultDialogWidget extends StatelessWidget {
  game_logic.State result;

  ResultDialogWidget({required this.result});

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
            SizedBox(
              height: 50,
              child: Image.asset(
                (result == game_logic.State.wonByX)
                    ? 'assets/X_transparent.png'
                    : (result == game_logic.State.wonByO)
                        ? 'assets/O_transparent.png'
                        : 'assets/logo_transparent.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              (result == game_logic.State.draw) ? 'Draw' : 'Won',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                    color: Colors.white,
                  ),
                  child: IconButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                      //Navigator.pushNamed(context, homePage);
                    },
                    icon: const Icon(Icons.home),
                  ),
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
                    color: Colors.white,
                  ),
                  child: IconButton(
                    color: Colors.orange,
                    onPressed: () {
                      BlocProvider.of<GameCubit>(context).resetGame();
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.refresh),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
