import 'package:fiestapp/components/custom_button.dart';
import 'package:fiestapp/components/custom_text.dart';
import 'package:fiestapp/components/custom_textfield.dart';
import 'package:fiestapp/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CreateRoom extends StatefulWidget {
  const CreateRoom({super.key});
  static String routeName = '/create_room';

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  // creating an instance of a name controller
  final TextEditingController _nameController = TextEditingController();

  //dispose the controller to avoid memory leaks
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
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
                  text: 'Create Room',
                  fontSize: 70),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  hintText: 'Enter your nickname',
                  textEditingController: _nameController),
              SizedBox(
                height: size.height * 0.03,
              ),
              const CustomButton(text: 'Create')
            ],
          ),
        ),
      ),
    );
  }
}
