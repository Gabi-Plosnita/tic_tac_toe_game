import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';

class BoardUi extends StatelessWidget {
  const BoardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 350,
      child: GridView.builder(
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              try {
                BlocProvider.of<GameCubit>(context)
                    .makeMove((index / 3).truncate(), index % 3);
              } on InvalidPositionException catch (e) {
                print(e);
              } on AlreadyOcuppiedException catch (e) {
                print(e);
              }
            },
            child: BlocBuilder<GameCubit, GameState>(
              builder: (context, state) {
                return Container(
                  decoration: BoxDecoration(
                    image: (state.board[(index / 3).truncate()][index % 3] !=
                            Piece.none)
                        ? DecorationImage(
                            image: (state.board[(index / 3).truncate()]
                                        [index % 3] ==
                                    Piece.x)
                                ? const AssetImage('assets/X_transparent.png')
                                : const AssetImage('assets/O_transparent.png'),
                            fit: BoxFit.cover,
                          )
                        : null,
                    border: Border(
                      left: BorderSide(
                        color:
                            (index % 3 != 0) ? Colors.grey : Colors.transparent,
                        width: 2,
                      ),
                      bottom: BorderSide(
                        color: (index < 6) ? Colors.grey : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
