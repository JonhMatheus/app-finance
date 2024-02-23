import 'package:flutter/material.dart';
import 'package:flutter_application_1/autenticacao/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller =
      LoginController(); //chamada do login_controller.dart

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
              campoEmail(),
              const SizedBox(height: 20),
              campoSenha(),
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

  Widget campoEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
          padding: const EdgeInsets.all(5),
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
          padding: const EdgeInsets.all(5),
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: TextField(
              obscureText: controller.visibility,
              decoration: InputDecoration(
                  hintText: 'Senha',
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.visibility =
                          !controller.visibility; //inversão do valor do icon
                      setState(() {});
                    },
                    child: const Icon(Icons.visibility),
                  )),
              controller: controller.campoSenha)),
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

  Widget botaoAcesso() {
    return GestureDetector(
      onTap: () => controller.login(context),
      child: Padding(
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
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget novaSenha() {
    return const Text(
      'Esqueceu a senha?',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
    );
  }
}
