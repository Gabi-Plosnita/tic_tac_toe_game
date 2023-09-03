import 'package:flutter/material.dart';
import 'package:tic_tac_toe/tic_tac_toe_lib.dart' as game_logic;

class WinnerDialog extends StatelessWidget {
  game_logic.State result;

  WinnerDialog({required this.result});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // Set a transparent background so that the gradient is visible
      backgroundColor: Colors.transparent,
      content: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 50,
              child: Image.asset(
                (result == game_logic.State.wonByX)
                    ? 'assets/X_transparent.png'
                    : (result == game_logic.State.wonByO)
                        ? 'assets/O_transparent.png'
                        : 'assets/logo_transparent.png',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              (result == game_logic.State.draw) ? 'Draw' : 'Won',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.black, // Button text color
                  fontSize: 18.0,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Rest of your code...
