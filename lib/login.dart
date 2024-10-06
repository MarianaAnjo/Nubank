import 'package:flutter/material.dart';
import 'appBody.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        toolbarHeight: 80,
        leading: IconButton(
          icon: const Icon(Icons.person_outline, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.question_mark_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon:
                const Icon(Icons.mark_email_read_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: const AppBody(), // Adicione o corpo aqui
    );
  }
}
