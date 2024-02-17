import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  bool isAccept = false;
  final campoEmail = TextEditingController();
  final campoSenha = TextEditingController();
  bool visibility = true;
}
