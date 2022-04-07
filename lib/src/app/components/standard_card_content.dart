import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class StandardCardContent extends StatelessWidget {
  final String label;
  final double altura;

  StandardCardContent({required this.label, required this.altura});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kIsWeb ? 80 : double.infinity,
      height: altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(children: [
        Center(
          child: Text(label, textAlign: TextAlign.center),
        ),
      ]),
    );
  }
}
