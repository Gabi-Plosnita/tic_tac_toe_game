import 'package:flutter/material.dart';

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
              // Your button's onPressed action
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
                  'Play',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Your button's onPressed action
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
                'Settings',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
