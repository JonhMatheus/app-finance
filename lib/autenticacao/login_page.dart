import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/autenticacao/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: SingleChildScrollView(
          child: Column(
            children: [
              acessar(),
              const SizedBox(height: 20),
              campoLogin('E-mail', false),
              const SizedBox(height: 20),
              campoLogin('Senha', true),
              const SizedBox(height: 20),
              salvarInformacoes(),
              const SizedBox(height: 40),
              botaoAcessar(),
              const SizedBox(height: 20),
              esqueceuASenha()
            ],
          ),
        ),
      ),
    );
  }

  Widget acessar() {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Acessar',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget campoLogin(String campoLogin, bool isPass) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          padding: const EdgeInsets.all(10),
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(isPass ? Icons.lock : Icons.account_circle),
                suffixIcon: GestureDetector(
                    onTap: () {
                      controller.visibility = !controller.visibility;
                      setState(() {});
                    },
                    child: Icon(isPass ? Icons.visibility : null))),
            obscureText: isPass ? controller.visibility : false,
            controller: isPass ? controller.campoSenha : controller.campoEmail,
          )),
    );
  }

  Widget salvarInformacoes() {
    return Row(
      children: [
        Checkbox(
            value: controller.isAccept,
            onChanged: (valor) {
              controller.isAccept = valor ?? false;
              setState(() {});
            }),
        const Text('Salvar minhas Informações',
            style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget botaoAcessar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff272020), borderRadius: BorderRadius.circular(8)),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Acessar',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget esqueceuASenha() {
    return const Text('Esqueceu a senha?',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold));
  }
}
