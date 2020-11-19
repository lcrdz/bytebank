import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData icon;
  final int maxLengt;

  Editor({
    this.controller,
    this.labelText,
    this.hintText,
    this.icon,
    this.maxLengt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.00, 16.00, 0.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        maxLength: maxLengt,
        style: TextStyle(
          fontSize: 18.0,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          icon: icon != null ? Icon(icon) : null,
        ),
      ),
    );
  }
}
