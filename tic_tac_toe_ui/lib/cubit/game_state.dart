part of 'game_cubit.dart';

class GameState extends Equatable  {

  const GameState({
    required this.board,
    required this.turn,
    required this.gameState,
  });

  GameState copyWith({
     List<List<Piece>>? board,
     Piece? turn,
     bool? isOver,
      State? gameState,
  }) => GameState(board: board?? this.board, turn: turn?? this.turn, gameState: gameState?? this.gameState);

  final List<List<Piece>> board;
  final Piece turn;
  final State gameState;
  
  @override
  List<Object?> get props => [board,turn,gameState];
}