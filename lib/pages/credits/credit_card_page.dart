import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controllers/controller_home_page.dart';
import 'package:nubank_clone/utils/default_colors.dart';

class CreditCardPage extends StatelessWidget {
  const CreditCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 15,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 25,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _limitDisponible(),
          _installments(),
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

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura atual',
          style: TextStyle(color: Colors.black),
        ),
        const SizedBox(height: 12),
        GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (controllerHomePage) {
            return Text(
              controllerHomePage.creditCardValue,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        )
      ],
    );
  }

  _limitDisponible() {
    return const Text(
      'Limite disponível de R\$ 100.000,00',
      style: TextStyle(color: Colors.black),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
