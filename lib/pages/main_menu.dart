import 'package:fiestapp/components/custom_button.dart';
import 'package:fiestapp/pages/create_room_screen.dart';
import 'package:fiestapp/pages/join_room_screen.dart';
import 'package:fiestapp/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget {
  static String routeName = '/main_menu';
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Create Room',
              onTap: () => Navigator.pushNamed(context, CreateRoom.routeName),
            ),
            const SizedBox(
              height: 18,
            ),
            CustomButton(
              text: 'Join Room',
              onTap: () => Navigator.pushNamed(context, JoinRoom.routeName),
            )
          ],
        ),
      ),
    );
  }
}
