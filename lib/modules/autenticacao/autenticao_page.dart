import 'package:flutter/material.dart';

class AutenticacaoPage extends StatelessWidget {
  const AutenticacaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 150, 15, 15),
        child: Column(
          children: const [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Acessar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
