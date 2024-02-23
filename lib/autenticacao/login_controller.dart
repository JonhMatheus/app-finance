import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_page.dart';
import 'package:flutter_application_1/models/usuarios.dart';
import 'package:flutter_application_1/utils/constant.dart';
import 'package:loading_empty_error/snackbar.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  bool isAccept = false;
  final campoEmail = TextEditingController();
  final campoSenha = TextEditingController();

  bool visibility = true;

  Usuarios? usuarioLogado;

  void login(BuildContext context) {
    final bool resultado = banco
        .where((element) => element.email == campoEmail.text)
        .toList()
        .isNotEmpty;

    if (resultado) {
      final Usuarios usuarioLogin = banco
          .firstWhere((element) => element.email.contains(campoEmail.text));
      usuarioLogado = usuarioLogin;

      if (campoSenha.text == usuarioLogin.senha) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        getEsigSnackBar('Senha Inválida',
            context: context, corFundo: Colors.red, icon: Icons.error);
      }
    }
  }
}
