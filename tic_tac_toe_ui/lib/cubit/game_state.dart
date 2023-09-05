part of 'game_cubit.dart';

class GameState extends Equatable {
  const GameState({
    required this.board,
    required this.turn,
    required this.gameState,
    required this.timeLeft,
    required this.totalTime,
  });

  GameState copyWith({
    List<List<Piece>>? board,
    Piece? turn,
    State? gameState,
    int? timeLeft,
    int? totalTime,
  }) =>
      GameState(
          board: board ?? this.board,
          turn: turn ?? this.turn,
          gameState: gameState ?? this.gameState,
          timeLeft: timeLeft ?? this.timeLeft,
          totalTime: totalTime ?? this.totalTime);

  final List<List<Piece>> board;
  final Piece turn;
  final State gameState;
  final int timeLeft;
  final int totalTime;

  @override
  List<Object?> get props => [board, turn, gameState, timeLeft, totalTime];
}
