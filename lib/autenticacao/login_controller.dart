import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_page.dart';
import 'package:loading_empty_error/snackbar.dart';
import 'package:mobx/mobx.dart';
import 'package:one_context/one_context.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  bool isAccept = false;

  final campoSenha = TextEditingController();
  final campoEmail = TextEditingController();

  bool visibility = true;

  List<String> usuarios = ['johnzin123@gmail.com'];

  List<String> senhas = ['brasil10', 'mimde', 'aipai'];

  login(BuildContext context) {
    bool resultado = usuarios.contains(campoEmail.text);

    if (resultado) {
      int userPosition = usuarios.indexOf(campoEmail.text);
      String userPassword = senhas[userPosition];

      if (campoSenha.text == userPassword) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        getEsigSnackBar('Senha inválida',
            context: context, corFundo: Colors.red, icon: Icons.error);
      }
    }
  }
}
