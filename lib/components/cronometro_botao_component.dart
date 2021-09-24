import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final Function function;

  const CronometroBotao(
      {Key? key,
      required this.texto,
      required this.icone,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
          onPressed: () {
            function();
          },
          child: Row(children: [Icon(icone), Text(texto)])),
    );
  }
}
