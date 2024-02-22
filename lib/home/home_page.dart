import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        Image.asset('assets/userpicture.png', scale: 0.75),
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
                const Text(
                  'Maria Antonieta',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF3E3E3E),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Center(
                      child: Icon(
                        Icons.edit_note_rounded,
                        color: Color(0xFF61C19E),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(width: 25),
        const Icon(
          Icons.notifications_rounded,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        const Icon(
          Icons.logout_rounded,
          color: Colors.white,
          size: 30,
        )
      ],
    );
  }
}
