import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_component.dart';
import 'package:pomodoro/components/entrada_tempo_component.dart';

class PomodoroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pomodoro'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(titulo: 'Qualquer coisa', valor: 3),
                EntradaTempo(titulo: 'Outra coisa', valor: 5)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
