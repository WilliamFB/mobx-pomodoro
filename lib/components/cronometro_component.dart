import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao_component.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            Text(
              '23:00',
              style: TextStyle(fontSize: 80, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CronometroBotao(texto: 'Iniciar', icone: Icons.play_arrow),
                CronometroBotao(texto: 'Parar', icone: Icons.stop),
                CronometroBotao(texto: 'Reiniciar', icone: Icons.refresh),
              ],
            )
          ],
        ));
  }
}
