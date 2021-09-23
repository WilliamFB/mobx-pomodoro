import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBotao({Key? key, required this.texto, required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
          onPressed: () {},
          child: Row(children: [Icon(icone), Text(texto)])),
    );
  }
}
