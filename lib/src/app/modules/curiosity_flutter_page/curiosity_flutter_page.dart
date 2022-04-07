import 'package:flutter/material.dart';
import 'package:prova/src/app/components/standard_card_content.dart';
import 'package:prova/src/app/components/standard_page.dart';
import 'package:prova/src/utils/export.dart';
import 'package:prova/src/app/components/standard_button.dart';
import 'package:prova/src/app/modules/curiosity_world_page/curiosity_world_page.dart';

class CuriosityFlutter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalancePageState();
  }
}

class _BalancePageState extends State<CuriosityFlutter> {
  TextEditingController monthlyIncome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Curiosidade sobre Flutter',
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          StandardCardContent(label: perguntaFlutter, altura: 52),
          const SizedBox(
            height: 20,
          ),
          StandardCardContent(label: respostaFlutter, altura: 340),
          const SizedBox(
            height: 20,
          ),
          StandardButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CuriosityWorld()));
            },
            buttonText: continuar,
          ),
        ],
      ),
    );
  }
}
