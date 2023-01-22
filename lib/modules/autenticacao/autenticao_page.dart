import 'package:flutter/material.dart';

class AutenticacaoPage extends StatelessWidget {
  const AutenticacaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 15),
        child: Column(
          children: [
            _buildHeader(),
            _buildInput(context, 'Email'),
            const SizedBox(height: 15),
            _buildInput(context, 'Senha'),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(
        children: [
          Image.asset(
            'assets/icons/logo.png',
            scale: 5,
            color: Colors.black.withOpacity(0.7),
          ),
          const SizedBox(
            height: 15,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Acessar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(BuildContext context, String titulo) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0XffF6F6F6),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffE8E8E8)),
      ),
      child: Text(
        titulo,
        style: const TextStyle(
          fontFamily: 'Metropolis',
          color: Color(0xffBDBDBD),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // Widget _buildAcessar(){
  //   return Container(
  //     width: MediaQuery.of(context).size.,
  //   );
  // }
}
