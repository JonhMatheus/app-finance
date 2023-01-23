import 'package:app_finance/shared/themes.dart';
import 'package:flutter/material.dart';

class AutenticacaoPage extends StatefulWidget {
  const AutenticacaoPage({Key? key}) : super(key: key);

  @override
  State<AutenticacaoPage> createState() => _AutenticacaoPageState();
}

class _AutenticacaoPageState extends State<AutenticacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 15),
        child: Column(
          children: [
            _buildHeader(),
            _buildInput('Login'),
            const SizedBox(height: 15),
            _buildInput('Senha'),
            const SizedBox(height: 25),
            _buildSaveInfo(),
            const SizedBox(height: 25),
            _buildAcessar()
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Image.asset(
            'assets/icons/logo.png',
            scale: 4,
          ),
          const SizedBox(
            height: 25,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Acessar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(String titulo) {
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
          color: Color(0xffBDBDBD),
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildSaveInfo() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: const Color(0xffF6F6F6),
              border: Border.all(color: const Color(0xffE8E8E8))),
        ),
        const SizedBox(width: 8),
        const Text(
          'Salvar minhas informações',
          style: TextStyle(
            color: Color(0xff707070),
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Widget _buildAcessar() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Themes.corCinzaBase,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            'Acessar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Esqueceu a Senha?',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Themes.corCinzaBase),
        )
      ],
    );
  }
}
