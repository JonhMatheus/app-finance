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
      backgroundColor: const Color(0xFF333333),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Acessar',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(10), 
                  ),
                  child: const Align (
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'E-mail',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.grey),
                    ),
                    ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(10)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Senha',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        'Mostrar',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  
              ),
            ),
            const SizedBox(height: 50),
            botao(),
          const SizedBox(height: 30),
          
          const Text(
            'Esqueceu a senha?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          )
          ],
        ),
      ),
    );
  }

  botao(){
   return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFF272020),
                  borderRadius:  BorderRadius.circular(10), 
                  ),
                  child: const Align (
                    alignment: Alignment.center,
                    child: Text(
                      'Acessar',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                    ),
                    ),
              ),
            );
  }
}
