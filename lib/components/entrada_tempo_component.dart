import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

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
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Column(
        children: [
          Text(titulo, style: TextStyle(fontSize: 25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildButton(context, Icons.arrow_downward, dec),
              Text(
                '$valor min',
                style: TextStyle(fontSize: 18),
              ),
              _buildButton(context, Icons.arrow_upward, inc),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, IconData icone, Function function) {
    final store = Provider.of<PomodoroStore>(context);

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
          primary: store.estaTrabalhando() ? Colors.red : Colors.green),
    );
  }
}
