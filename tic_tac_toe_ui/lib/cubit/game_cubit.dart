import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> implements ListenerInterface {
  GameInterface game;

  GameCubit()
      : game = GameInterface(),
        super(GameState(
          board:
              List.generate(3, (row) => List.generate(3, (col) => Piece.none)),
          turn: Piece.x,
          gameState: State.playing,
          timeLeft: 5000,
          totalTime: 5000,
        )) {
    game.addListener(this);
    game.setTimer(duration: 5000, frequency: 10);
  }

  void makeMove(int row, int col) {
    game.makeMove(row, col);
  }

  void resetGame() {
    game.resetGame();
  }

  void setStrategy(Strategy strategy) {
    game.setStrategy(strategy);
  }

  State getGameResult() {
    return game.state;
  }

  @override
  void onMoveMade(int row, int col) {
    List<List<Piece>> newBoard = [];
    for (int i = 0; i < 3; i++) {
      List<Piece> boardRow = [];
      for (int j = 0; j < 3; j++) {
        Piece piece = (i == row && j == col) ? state.turn : game.getPiece(i, j);
        boardRow.add(piece);
      }
      newBoard.add(boardRow);
    }
    emit(state.copyWith(board: newBoard, turn: game.turn));
  }

  @override
  void onGameOver(State gameState) {
    emit(state.copyWith(board: state.board, gameState: gameState));
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
    emit(state.copyWith(
        board: newBoard, turn: Piece.x, gameState: State.playing,timeLeft: game.timeLeft));
  }

  @override 
  void onTimePassed(){
    emit(state.copyWith(timeLeft: game.timeLeft));
  }

}
