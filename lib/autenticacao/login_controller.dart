import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_page.dart';
import 'package:flutter_application_1/models/usuarios.dart';
import 'package:flutter_application_1/utils/constantes.dart';
import 'package:loading_empty_error/snackbar.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  bool isAccept = false;

  final campoSenha = TextEditingController();
  final campoEmail = TextEditingController();

  bool visibility = true;

  late Usuarios usuariosLogado;

  void login(BuildContext context) {
    // ignore: iterable_contains_unrelated_type
    final bool resultado = banco
        .where((element) => element.email == campoEmail.text)
        .toList()
        .isNotEmpty;

    if (resultado) {
      final Usuarios usuarioLogin = banco
          .firstWhere((element) => element.email.contains(campoEmail.text));

      usuariosLogado = usuarioLogin;

      if (campoSenha.text == usuarioLogin.senha) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        getEsigSnackBar('Senha inválida',
            context: context, corFundo: Colors.red, icon: Icons.error);
      }
    }
  }
}
