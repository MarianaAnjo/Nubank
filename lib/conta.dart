import 'package:flutter/material.dart';

class Conta extends StatelessWidget {
  const Conta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16), // Margem de 16px em todas as direções
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Conta",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          const SizedBox(height: 10), // Entre o texto conta e o saldo
          const Text(
            "R\$1000,00", // Valor da conta
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30), // Entre o saldo e a fila de ícones
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIconButton(Icons.pix, "Área Pix"),
              _buildIconButton(Icons.money, "Pagamentos"),
              _buildIconButton(Icons.qr_code, "QRCode"),
              _buildIconButton(Icons.attach_money, "Transferir"),
            ],
          ),
          const SizedBox(
              height: 30), // Entre a fila de ícones e o card “Meus Cartões”
          _buildCardSection(),
          const SizedBox(
              height:
                  30), // Entre card “Meus Cartões” e o card “Guarde seu dinheiro”
          _buildPlanningSection(), // Adiciona a caixinha de planejamento
          const SizedBox(
              height: 20), // Espaçamento antes da caixinha de cartão de crédito
          _buildCreditCardSection(), // Adiciona a caixinha de cartão de crédito
          const SizedBox(
              height: 20), // Espaçamento antes da seção de empréstimo
          _buildLoanSection(), // Adiciona a seção de empréstimo
          const SizedBox(
              height: 20), // Espaçamento antes da seção de "Descubra Mais"
          _buildDiscoverMoreSection(), // Adiciona a seção de "Descubra Mais"
        ],
      ),
    );
  }

  static Widget _buildIconButton(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xffddcde0), // Mantive o fundo lilás claro
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          padding: const EdgeInsets.all(12),
          child: IconButton(
            icon: Icon(icon),
            onPressed: () {},
            padding: EdgeInsets.zero,
          ),
        ),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(
                fontWeight:
                    FontWeight.bold)), // Texto da fila de ícones em negrito
      ],
    );
  }

  static Widget _buildCardSection() {
    return Container(
      padding: const EdgeInsets.all(15), // Padding interno do card
      decoration: BoxDecoration(
        color: Color(0xffddcde0), // Fundo lilás
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.credit_card, size: 30),
          const SizedBox(width: 10),
          const Text(
            "Meus cartões",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildPlanningSection() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xffddcde0), // Fundo lilás claro
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Guarde seu dinheiro em caixinhas",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Acessando a área de planejamento",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildCreditCardSection() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white, // Fundo branco
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Cartão de Crédito",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          const SizedBox(
              height: 10), // Entre o texto Cartão de crédito e fatura fechada
          const Text("Fatura Fechada"),
          const SizedBox(
              height: 10), // Entre fatura fechada e o valor da fatura
          const Text(
            "R\$2.123,39",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15), // Entre valor da fatura e vencimento
          const Text("Vencimento dia 15"),
          const SizedBox(height: 15), // Entre vencimento e botão renegociar
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              "Renegociar",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black), // Texto do botão renegociar
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildLoanSection() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white, // Fundo branco
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Empréstimo",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "Tudo certo! Você está em dia",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  static Widget _buildDiscoverMoreSection() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white, // Fundo branco
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Descubra Mais",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.network(
            "images/thumbnail.png", // Substitua com a URL da imagem de seguro de vida
            height: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical: 5), // Padding vertical para seguro de vida
            child: Text(
              "Seguro de Vida",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical: 5), // Padding vertical para “Cuide bem...”
            child: Text(
              "Cuide bem de quem você ama!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(
                  top: 5, bottom: 10), // Padding para o botão conhecer
              backgroundColor: Colors.purple.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Conhecer"),
          ),
        ],
      ),
    );
  }
}
