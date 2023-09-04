part of 'game_cubit.dart';

class GameState extends Equatable  {

  const GameState({
    required this.board,
    required this.turn,
    required this.gameState,
    required this.timeLeft,
  });

  GameState copyWith({
     List<List<Piece>>? board,
     Piece? turn,
     State? gameState,
     int? timeLeft,
  }) => GameState(board: board?? this.board, turn: turn?? this.turn, 
  gameState: gameState?? this.gameState,timeLeft: timeLeft?? this.timeLeft);

  final List<List<Piece>> board;
  final Piece turn;
  final State gameState;
  final int timeLeft;
  
  @override
  List<Object?> get props => [board,turn,gameState];
}