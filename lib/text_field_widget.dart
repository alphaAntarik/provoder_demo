import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
  TextEditingController controller;
  Text_Field({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Enter your username',
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      // You can add more properties and functionality as needed
    );
  }
}
