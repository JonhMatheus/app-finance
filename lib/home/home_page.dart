import 'package:flutter/material.dart';
import 'package:flutter_application_1/autenticacao/login_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LoginController controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272020),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 70, 15, 0),
        child: Column(
          children: [
            cabeca(),
          ],
        ),
      ),
    );
  }

  Widget cabeca() {
    return Row(
      children: [
        Image.network(controller.usuariosLogado.fotoUsuario, scale: 0.95),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Olá, bem vindo!',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  controller.usuariosLogado.nomeUsuario,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(width: 25),
        const Icon(
          Icons.notifications_rounded,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(
          width: 15,
        ),
        const Icon(
          Icons.logout_rounded,
          color: Colors.white,
          size: 25,
        )
      ],
    );
  }
}
