import 'package:app_finance/modules/home/widgets/itens_widget.dart';
import 'package:app_finance/shared/themes.dart';
import 'package:dotted_line/dotted_line.dart';
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
              const SizedBox(height: 20),
              const Divider(color: Themes.corBrancoClaro),
              const SizedBox(height: 20),
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

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi, Arthur',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Perfil Consumidor',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Themes.corBrancoClaro),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/icons/perfil.png',
                scale: 1.8,
              ),
            )
          ],
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
                  '- R\$ 40,50 ',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Mês anterior',
                  style: TextStyle(
                    color: Themes.corBrancoClaro,
                    fontSize: 12,
                  ),
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
          height: 18,
        ),
        Row(
          children: [
            _buildFiltros('Preço', 'assets/icons/arrow.png'),
            const SizedBox(width: 10),
            _buildFiltros('Data', 'assets/icons/calendar.png'),
          ],
        ),
        const ItensWidget(
            titulo: 'Pizza de Sábado', data: '21 Dez 2023, 18:40 pm'),
        const SizedBox(
          height: 20,
        ),
        const DottedLine(
          dashColor: Themes.corBrancoClaro,
          dashGapLength: 3,
          lineThickness: 1,
        ),
      ],
    );
  }

  Widget _buildFiltros(String titulo, String assetURL) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Themes.corBrancoClaro),
      ),
      child: Row(children: [
        Text(
          titulo,
          style: const TextStyle(
            color: Themes.corBrancoClaro,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 5),
        Image.asset(
          assetURL,
          scale: 2,
        )
      ]),
    );
  }
}
