import 'package:flutter/material.dart';
import 'conta.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ListView(
        children: const [
          Conta(), // Adicione a classe Conta aqui
        ],
      ),
    );
  }
}
