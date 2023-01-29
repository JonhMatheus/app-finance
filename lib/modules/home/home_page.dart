import 'package:app_finance/shared/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.corCinzaBase,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 80, 25, 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 25),
              const Divider(height: 2, color: Themes.corBrancoClaro),
              const SizedBox(height: 25),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    _buildGastos('Gasto Mensal', 'assets/icons/grana.png', 1.8),
                    _buildGastos('Gasto Anual', 'assets/icons/wallet.png', 3.1),
                    _buildGastos('Gasto p/dia', 'assets/icons/wallet.png', 3.1),
                  ])),
              const SizedBox(height: 30),
              _buildHistorico()
            ]),
      ),
    );
  }

  Column _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Hi, Arthur',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Perfil Consumidor',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Themes.corBrancoClaro),
        ),
      ],
    );
  }

  Padding _buildGastos(String tipo, String assetImage, double scale) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding: const EdgeInsets.only(top: 15),
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Themes.corCinzaGastos,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              tipo,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Image.asset(
              assetImage,
              scale: scale,
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'R\$ 4050,20 ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '- R\$40,50 ',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Text(
                  'Mês anterior',
                  style: TextStyle(
                      color: Themes.corBrancoClaro,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistorico() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Histórico de Transações',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [],
        )
      ],
    );
  }
}
