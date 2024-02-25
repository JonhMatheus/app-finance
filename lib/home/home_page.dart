import 'package:flutter/material.dart';
import 'package:flutter_application_1/autenticacao/login_controller.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LoginController controller = GetIt.instance.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272020),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 70, 15, 0),
        child: Column(
          children: [
            cabeca(),
            const SizedBox(
              height: 35,
            ),
            corpo(),
          ],
        ),
      ),
    );
  }

  Widget cabeca() {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            controller.usuariosLogado.fotoUsuario,
            width: 57,
            height: 57,
            fit: BoxFit.cover,
          ),
        ),
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
        const SizedBox(width: 55),
        const Icon(
          Icons.notifications_rounded,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () => controller.logout(context),
          child: const Icon(
            Icons.logout_rounded,
            color: Colors.white,
            size: 25,
          ),
        )
      ],
    );
  }

  Widget corpo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Patrimônio Total',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              'R\$',
              style: TextStyle(
                  color: Color(0xFF61C19E),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            Text(controller.usuariosLogado.patrimonio,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: controller.usuariosLogado.tiposDeInvestimentos
                .map((e) => tiposDeInvestimentos(e))
                .toList(),
          ),
        )
      ],
    );
  }

  Widget tiposDeInvestimentos(String tipoInvestimento) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
        decoration: BoxDecoration(
            color: const Color(0xFF3E3E3E),
            borderRadius: BorderRadius.circular(25)),
        child: Text(
          tipoInvestimento,
          style: const TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
