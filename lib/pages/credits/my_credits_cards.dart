import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/default_colors.dart';

class MyCreditsCards extends StatefulWidget {
  const MyCreditsCards({super.key});

  @override
  State<MyCreditsCards> createState() => _MyCreditsCardsState();
}

class _MyCreditsCardsState extends State<MyCreditsCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(
            MdiIcons.creditCard,
            color: Colors.black,
          ),
          const SizedBox(width: 12),
          const Text('Meus cartões')
        ],
      ),
    );
  }
}
