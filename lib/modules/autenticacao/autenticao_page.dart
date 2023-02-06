import 'package:app_finance/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AutenticacaoPage extends StatefulWidget {
  const AutenticacaoPage({Key? key}) : super(key: key);

  @override
  State<AutenticacaoPage> createState() => _AutenticacaoPageState();
}

class _AutenticacaoPageState extends State<AutenticacaoPage> {
  bool concordoPoliticas = false;
  String? loginText;
  String? senhaText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.corVerdeEscuro,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              _buildInput('Login ', loginText ?? ''),
              const SizedBox(height: 15),
              _buildInput('Senha', senhaText ?? ''),
              const SizedBox(height: 18),
              _buildSaveInfo(),
              const SizedBox(height: 30),
              _buildAcessar()
            ],
          ),
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
            scale: 1.3,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Acessar',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Themes.corCinzaBase,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(String titulo, String textForm) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20, 8, 0, 8),
        decoration: BoxDecoration(
          color: const Color(0XffF6F6F6),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Themes.corVerdeClaro),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: titulo,
            hintStyle: const TextStyle(
              color: Color(0xffBDBDBD),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          onChanged: (String? text) {
            text != null ? textForm = text : null;
          },
        ));
  }

  Widget _buildSaveInfo() {
    return Row(
      children: [
        Checkbox(
          value: concordoPoliticas,
          checkColor: Colors.white,
          activeColor: Themes.corVerdeClaro,
          onChanged: (value) => setState(() {
            concordoPoliticas == false
                ? concordoPoliticas = true
                : concordoPoliticas = false;
          }),
        ),
        const Expanded(
          child: Text.rich(
            TextSpan(
                text: 'Eu li e concordo com as ',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Color(0xff535353)),
                children: <TextSpan>[
                  TextSpan(
                    text: 'políticas de privacidade',
                    style: TextStyle(
                        height: 1.3,
                        color: Color(0xff535353),
                        fontWeight: FontWeight.w900),
                  )
                ]),
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
