import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro_botao_component.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Container(
          color: store.estaTrabalhando() ? Colors.red : Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.estaTrabalhando()
                    ? 'Hora de trabalhar'
                    : 'Hora de descansar',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Text(
                '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 80, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  store.iniciado
                      ? CronometroBotao(
                          texto: 'Parar',
                          icone: Icons.stop,
                          function: store.parar)
                      : CronometroBotao(
                          texto: 'Iniciar',
                          icone: Icons.play_arrow,
                          function: store.iniciar,
                        ),
                  CronometroBotao(
                      texto: 'Reiniciar',
                      icone: Icons.refresh,
                      function: store.reiniciar),
                ],
              ),
            ],
          )),
    );
  }
}
