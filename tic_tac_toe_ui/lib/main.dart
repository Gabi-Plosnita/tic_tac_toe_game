import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe_ui/cubit/game_cubit.dart';
import 'package:tic_tac_toe_ui/routes/routes_generator.dart';
import 'package:tic_tac_toe_ui/routes/routes_name.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameCubit(),
      child: const MaterialApp(
        title: 'Tic Tac Toe',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RoutesGenerator.generateRoute,
        initialRoute: homePage,
      ),
    );
  }
}
