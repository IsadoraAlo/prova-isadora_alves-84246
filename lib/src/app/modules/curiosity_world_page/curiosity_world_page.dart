import 'package:flutter/material.dart';
import 'package:prova/src/app/components/standard_card_content.dart';
import 'package:prova/src/app/components/standard_page.dart';
import 'package:prova/src/utils/export.dart';

class CuriosityWorld extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalancePageState();
  }
}

class _BalancePageState extends State<CuriosityWorld> {
  TextEditingController monthlyIncome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Curiosidade sobre o Mundo',
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          StandardCardContent(label: perguntaGeral, altura: 52),
          const SizedBox(
            height: 20,
          ),
          StandardCardContent(label: respostaGeral, altura: 244),
        ],
      ),
    );
  }
}
