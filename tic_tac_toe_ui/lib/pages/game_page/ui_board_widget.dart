import 'package:flutter/material.dart';

class BoardUi extends StatelessWidget {
  const BoardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                  color: (index % 3 != 0) ? Colors.grey : Colors.white),
              bottom:
                  BorderSide(color: (index < 6) ? Colors.grey : Colors.white),
            ),
          ),
        );
      },
    );
  }
}
