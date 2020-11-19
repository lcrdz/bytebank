import 'package:bytebank/screens/transfer_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green.shade900,
        accentColor: Colors.blueAccent.shade700,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent.shade700,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: TransfersList(),
    );
  }
}
