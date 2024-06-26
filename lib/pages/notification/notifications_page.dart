import 'package:flutter/material.dart';
import 'package:nubank_clone/utils/default_colors.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(),
          _saveMoney(),
        ],
      ),
    );
  }

  _income() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 10),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Seu ',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: 'Informe de rendimentos ',
              style: TextStyle(color: backgroundColor, fontSize: 16),
            ),
            const TextSpan(
              text: 'de 2022 já está...',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  _saveMoney() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 10),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Chegou o ',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            TextSpan(
              text: 'débito automático da fatura do...',
              style: TextStyle(color: backgroundColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
