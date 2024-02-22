import 'package:flutter/material.dart';
import 'package:flutter_application_1/autenticacao/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller =
      LoginController(); // chama do login_controller.dart
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
              campoEmail(),
              const SizedBox(height: 20),
              campoSenha(),
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

  Widget campoEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          padding: const EdgeInsets.all(10),
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextField(
              decoration: const InputDecoration(
                hintText: 'Email',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.account_circle),
              ),
              controller: controller.campoEmail)),
    );
  }

  Widget campoSenha() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextField(
              obscureText: controller.visibility,
              decoration: InputDecoration(
                hintText: 'Senha',
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: GestureDetector(
                  onTap: () {
                    controller.visibility = !controller.visibility;
                    setState(() {});
                  },
                  child: const Icon(Icons.visibility),
                ),
              ),
              controller: controller.campoSenha),
        ));
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
    return GestureDetector(
      onTap: () => controller.login(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color(0xff272020),
              borderRadius: BorderRadius.circular(8)),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Acessar',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
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
