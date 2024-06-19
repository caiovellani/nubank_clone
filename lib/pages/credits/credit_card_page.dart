import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCardPage extends StatelessWidget {
  const CreditCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 25,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard, color: Colors.black);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Cartão de crédito',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Icon(
          MdiIcons.chevronRight,
        )
      ],
    );
  }
}
