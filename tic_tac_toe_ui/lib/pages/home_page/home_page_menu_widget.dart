import 'package:flutter/material.dart';
import 'package:tic_tac_toe_ui/routes/routes_name.dart';

class HomePageMenu extends StatelessWidget {
  const HomePageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, gamePage);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fixedSize: const Size(200, 50),
              backgroundColor: const Color.fromARGB(255, 88, 124, 229),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 8),
                Text(
                  'Play with AI',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, gamePage);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            fixedSize: const Size(200, 50),
            backgroundColor: const Color.fromARGB(255, 88, 124, 229),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 8),
              Text(
                '2 Players',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
