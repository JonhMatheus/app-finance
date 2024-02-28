// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final String nome;
  final Color corFonte;
  final Color corContainer;
  final IconData tipoIcone;
  final Color corIcone;

  const BotaoWidget({
    Key? key,
    required this.nome,
    required this.corFonte,
    required this.corContainer,
    required this.tipoIcone,
    required this.corIcone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: BoxDecoration(
          color: corContainer,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Icon(tipoIcone, color: corIcone),
            const SizedBox(width: 5),
            Text(
              nome,
              style: TextStyle(
                  color: corFonte, fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
