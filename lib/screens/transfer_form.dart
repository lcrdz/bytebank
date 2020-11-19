import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {
  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferência"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controller: _accountNumberController,
              labelText: 'Número da conta e digito',
              hintText: '1234-0',
              maxLengt: 6,
            ),
            Editor(
              controller: _amountController,
              labelText: 'Valor',
              hintText: '0,00',
              icon: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text("Confirmar"),
              onPressed: () => _createTransfer(context),
            )
          ],
        ),
      ),
    );
  }

  void _createTransfer(BuildContext context) {
    final double amount = double.tryParse(_amountController.text);
    final String accountNumber = _accountNumberController.text;
    if (amount != null && accountNumber != null) {
      final transfer = Transfer(amount, accountNumber);
      Navigator.pop(context, transfer);
    }
  }
}
