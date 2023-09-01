import 'package:flutter/material.dart';

class BoardUi extends StatelessWidget {
  const BoardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 350,
      child: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print('Clicked');
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: (index % 3 != 0) ? Colors.grey : Colors.transparent,
                    width: 2,
                  ),
                  bottom: BorderSide(
                    color: (index < 6) ? Colors.grey : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
