import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Criando transferência',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorConta,
              dica: '1234',
              titulo: 'Número da conta',
            ),
            Editor(
              controlador: _controladorValor,
              titulo: 'Valor da transferência',
              dica: '100.00',
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              onPressed: () => _cria_transferencia(context),
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }

  void _cria_transferencia(BuildContext context) {
    final int conta_transferencia = int.tryParse(_controladorConta.text);
    final double valor_transferencia = double.tryParse(_controladorValor.text);

    if (conta_transferencia != null && valor_transferencia != null) {
      final transferenciaCriada = Transferencia(valor_transferencia, conta_transferencia);
      debugPrint('Criando transferência');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
