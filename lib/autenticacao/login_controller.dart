import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  bool isAccept = false;

  final campoSenha = TextEditingController();
  final campoEmail = TextEditingController();

  bool visibility = true;
}
