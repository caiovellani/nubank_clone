import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/pages/account/account_nubank.dart';
import 'package:nubank_clone/pages/actions/menu_itens.dart';
import 'package:nubank_clone/pages/credits/credit_card_page.dart';
import 'package:nubank_clone/pages/credits/my_credits_cards.dart';
import 'package:nubank_clone/pages/home/models/header.dart';
import 'package:nubank_clone/utils/default_colors.dart';

import '../notification/notifications_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(thickness: 1.5),
              MyCreditsCards(),
              NotificationsPage(),
              Divider(thickness: 1.5),
              CreditCardPage(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
