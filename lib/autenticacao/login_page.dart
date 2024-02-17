import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Acessar',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'E-mail',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Senha', style: TextStyle(color: Colors.grey)),
                    Text(
                      'Mostrar',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            botaoAcessar(),
            const SizedBox(height: 20),
            const Text('Esqueceu a senha?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
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
}
