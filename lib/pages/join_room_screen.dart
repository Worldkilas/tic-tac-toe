import 'package:fiestapp/components/custom_button.dart';
import 'package:fiestapp/components/custom_text.dart';
import 'package:fiestapp/components/custom_textfield.dart';
import 'package:fiestapp/responsive/responsive.dart';
import 'package:flutter/material.dart';

class JoinRoom extends StatefulWidget {
  const JoinRoom({super.key});
  static String routeName = '/join_room';

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _nameIdController = TextEditingController();

  @override
  void dispose() {
    _gameIdController.dispose();
    _nameIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                  shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
                  text: 'Join Room',
                  fontSize: 70),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  hintText: 'Enter your nickname',
                  textEditingController: _nameIdController),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  hintText: 'Enter your Game ID',
                  textEditingController: _gameIdController),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomButton(text: 'Join')
            ],
          ),
        ),
      ),
    );
  }
}
