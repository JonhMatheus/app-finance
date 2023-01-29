import 'package:app_finance/shared/themes.dart';
import 'package:flutter/material.dart';

class ItensWidget extends StatelessWidget {
  final String titulo;
  final String data;
  const ItensWidget({Key? key, required this.titulo, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/pizza.png',
              width: MediaQuery.of(context).size.width * 0.18,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data,
                style: const TextStyle(
                  color: Themes.corBrancoClaro,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
