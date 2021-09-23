import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  EntradaTempo({required this.titulo, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo, style: TextStyle(fontSize: 25)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(Icons.arrow_downward),
            _buildButton(Icons.arrow_upward),
            Text(
              '$valor - min',
              style: TextStyle(fontSize: 18),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildButton(IconData icone) {
    return ElevatedButton(
      onPressed: () {},
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
