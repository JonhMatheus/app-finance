import 'package:flutter/material.dart';
import 'package:flutter_application_1/autenticacao/login_page.dart';
import 'package:flutter_application_1/home/home_page.dart';
import 'package:flutter_application_1/models/usuarios.dart';
import 'package:flutter_application_1/utils/constantes.dart';
import 'package:flutter_application_1/utils/shared_prefs.dart';
import 'package:loading_empty_error/snackbar.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  bool isAccept = false;

  SharedPrefs sharedPrefs = SharedPrefs();

  final campoSenha = TextEditingController();
  final campoEmail = TextEditingController();

  bool visibility = true;

  late Usuarios usuariosLogado;

  void login(BuildContext context) {
    campoEmail.text = campoEmail.text.trim();

    final bool resultado = banco
        .where((element) => element.email == campoEmail.text)
        .toList()
        .isNotEmpty;

    if (resultado) {
      final Usuarios usuarioLogin = banco
          .firstWhere((element) => element.email.contains(campoEmail.text));

      usuariosLogado = usuarioLogin;

      if (campoSenha.text == usuarioLogin.senha) {
        saveInfo();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        getEsigSnackBar('Senha inválida',
            context: context, corFundo: Colors.red, icon: Icons.error);
      }
    }
  }

  Future verificaInfo(BuildContext context) async {
    bool isSaveEmail = await sharedPrefs.contem('loginEmail');
    bool isSaveSenha = await sharedPrefs.contem('loginSenha');

    if (isSaveEmail && isSaveSenha) {
      campoEmail.text = await sharedPrefs.read('loginEmail');

      final Usuarios usuarioLogin = banco
          .firstWhere((element) => element.email.contains(campoEmail.text));

      usuariosLogado = usuarioLogin;

      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }

  void saveInfo() {
    sharedPrefs.save('loginEmail', campoEmail.text);
    sharedPrefs.save('loginSenha', campoSenha.text);
  }

  void init(BuildContext context) async {
    await verificaInfo(context);
  }

  void logout(BuildContext context) {
    sharedPrefs.remove('loginEmail');
    sharedPrefs.remove('loginSenha');

    campoSenha.clear();

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
