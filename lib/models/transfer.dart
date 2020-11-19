class Transfer {
  final double amount;
  final String accountNumber;

  Transfer(
    this.amount,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'conta e digito: $accountNumber valor: $amount';
  }
}
