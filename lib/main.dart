import 'package:flutter/material.dart';
import 'package:kbc_game_app/screens/all_win_page.dart';
import 'package:kbc_game_app/screens/home_page.dart';
import 'package:kbc_game_app/screens/lose_page.dart';
import 'package:kbc_game_app/screens/win_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "win_page": (context) => const win_page(),
        "lose_page": (context) => const lose_page(),
        "all_win_page": (context) => const all_win_page(),
      },
    ),
  );
}
