import 'package:bytebank/models/transfer.dart';
import 'package:bytebank/screens/transfer_form.dart';
import 'package:flutter/material.dart';

class TransfersList extends StatefulWidget {
  final List<Transfer> _transfers = List();

  @override
  State<StatefulWidget> createState() {
    return TransfersListState();
  }
}

class TransfersListState extends State<TransfersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._transfers[index];
          return TransferItem(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferForm();
          })).then((transfer) => addTransfer(transfer));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addTransfer(Transfer transfer) {
    if (transfer != null) setState(() => widget._transfers.add(transfer));
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.amount.toString()),
        subtitle: Text(_transfer.accountNumber),
      ),
    );
  }
}
