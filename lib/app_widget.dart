import 'package:flutter/material.dart';

import 'modules/autenticacao/autenticao_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        supportedLocales: const [Locale('pt', 'BR')],
        theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
        ),
        home: const AutenticacaoPage());
  }
}
