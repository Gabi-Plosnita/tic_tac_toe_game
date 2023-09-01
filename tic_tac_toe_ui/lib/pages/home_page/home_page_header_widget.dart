import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset('assets/logo_transparent.png'),
          ),
        ),
        const Text(
          'Tic-Tac-Toe',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ],
    );
  }
}
