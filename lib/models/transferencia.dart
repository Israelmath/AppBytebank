class Transferencia {
  final double valor;
  final int numero_conta;

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numero_conta: $numero_conta}';
  }

  Transferencia(this.valor, this.numero_conta);
}
