import 'package:flutter/material.dart';
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
      backgroundColor: const Color(0xFF333333),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: SingleChildScrollView(
          child: Column(
            children: [
              titulo(),
              const SizedBox(height: 20),
              campoLogin('Email', false),
              const SizedBox(height: 20),
              campoLogin('Senha', true),
              const SizedBox(height: 20),
              saveInfo(),
              const SizedBox(height: 40),
              botaoAcesso(),
              const SizedBox(height: 30),
              novaSenha(),
            ],
          ),
        ),
      ),
    );
  }

  Widget campoLogin(String campoLogin, bool isPassword) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
          padding: const EdgeInsets.all(16),
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: TextField(
              obscureText: isPassword ? controller.visibility : false,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon:
                      Icon(isPassword ? Icons.lock : Icons.account_circle),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.visibility = !controller.visibility;
                      setState(() {});
                    },
                    child: Icon(isPassword ? Icons.visibility : null),
                  )),
              controller:
                  isPassword ? controller.campoSenha : controller.campoEmail)),
    );
  }

  Widget saveInfo() {
    return Row(
      children: [
        Checkbox(
            value: controller.isAccept,
            onChanged: (valor) {
              controller.isAccept = valor ?? false;
              setState(() {}); //recarrega a tela para dar o novo valor
            }),
        const Text(
          'Salvar minhas informações',
          style: TextStyle(fontSize: 16, color: Colors.white),
        )
      ],
    );
  }

  Widget novaSenha() {
    return const Text(
      'Esqueceu a senha?',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
    );
  }

  Widget titulo() {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Acessar',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      ),
    );
  }

  Widget botaoAcesso() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xFF272020),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Acessar',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
