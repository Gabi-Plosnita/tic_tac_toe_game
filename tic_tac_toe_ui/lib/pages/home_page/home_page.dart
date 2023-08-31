import 'package:flutter/material.dart';
import 'package:tic_tac_toe_ui/pages/home_page/home_page_header_widget.dart';
import 'package:tic_tac_toe_ui/pages/home_page/home_page_menu_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomePageHeader(),
            HomePageMenu(),
          ],
        ),
      ),
    );
  }
}
