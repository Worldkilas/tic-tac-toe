import 'package:fiestapp/constants/colors.dart';
import 'package:fiestapp/pages/create_room_screen.dart';
import 'package:fiestapp/pages/join_room_screen.dart';
import 'package:fiestapp/pages/main_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic-Tac-Toe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: bgColor),
      routes: {
        MainMenuPage.routeName: (context) => const MainMenuPage(),
        JoinRoom.routeName: (context) => const JoinRoom(),
        CreateRoom.routeName: (context) => const CreateRoom()
      },
      initialRoute: MainMenuPage.routeName,
    );
  }
}
