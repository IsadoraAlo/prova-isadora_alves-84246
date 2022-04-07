import 'package:flutter/material.dart';
import 'package:prova/src/app/components/standard_card_content.dart';
import 'package:prova/src/app/components/standard_form.dart';
import 'package:prova/src/app/modules/curiosity_flutter_page/curiosity_flutter_page.dart';
import 'package:prova/src/utils/export.dart';

// ignore: use_key_in_widget_constructors
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CuriosityFlutter()));
                }, // Image tapped
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              const SizedBox(height: 15),
              StandardForm(label: frase),
              const SizedBox(height: 15),
              StandardForm(label: impacto),
              const SizedBox(height: 30),
              StandardCardContent(label: nome, altura: 116),
            ],
          ),
        ),
      ),
    );
  }
}
