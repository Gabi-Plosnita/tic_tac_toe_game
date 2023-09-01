import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> implements ListenerInterface {
  GameInterface game;
  List<ListenerInterface> listeners;

  GameCubit()
    : game = GameInterface(),
      listeners=[],
      super(GameState(
        board:List.generate(3, (row) => List.generate(3, (col) => Piece.none)),
        turn: Piece.x,
        gameState: State.playing,
      )) 
  {
    listeners.add(this);
  }

  void makeMove(int row, int col) {
    game.makeMove(row, col);
  }

  @override
  void onMoveMade(int row, int col) {
    List<List<Piece>> newBoard = [];
    for (int i = 0; i < 3; i++) {
      List<Piece> boardRow = [];
      for (int j = 0; j < 3; j++) {
        boardRow.add((i == row && j == col) ? state.turn : game.getPiece(row, col));
      }
      newBoard.add(boardRow);
    }
    emit(state.copyWith(board: newBoard, turn: game.turn));
  }

  @override
  void onGameOver(State gameState) {
    emit(state.copyWith(gameState: gameState));
  }

  @override
  void onResetGame() {
    List<List<Piece>> newBoard = [];
    for (int i = 0; i < 3; i++) {
      List<Piece> boardRow = [];
      for (int j = 0; j < 3; j++) {
        boardRow.add(Piece.none);
      }
      newBoard.add(boardRow);
    }
    emit(state.copyWith(board: newBoard, turn: Piece.x,gameState: State.playing));
  }
  
  // Add methods for managing game state, making moves, etc.
}
