import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_widget.dart';
import 'package:flutter_application_1/autenticacao/login_controller.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.instance.registerSingleton<LoginController>(LoginController());
  runApp(const MyApp());
}
