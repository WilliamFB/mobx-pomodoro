import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final Function inc;
  final Function dec;

  EntradaTempo(
      {required this.titulo,
      required this.valor,
      required this.inc,
      required this.dec});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo, style: TextStyle(fontSize: 25)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(Icons.arrow_downward, dec),
            Text(
              '$valor min',
              style: TextStyle(fontSize: 18),
            ),
            _buildButton(Icons.arrow_upward, inc),
          ],
        )
      ],
    );
  }

  Widget _buildButton(IconData icone, Function function) {
    return ElevatedButton(
      onPressed: () {
        function();
      },
      child: Icon(
        icone,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(15),
          primary: Colors.red),
    );
  }
}
