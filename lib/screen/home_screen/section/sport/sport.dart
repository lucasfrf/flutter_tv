import 'package:flutter/material.dart';
import 'package:flutter_tv/components/catalog/catalog.dart';
import 'package:flutter_tv/enuns/action_card_click.dart';
import 'package:flutter_tv/screen/home_screen/section/sport/const/list_baseball.dart';
import 'package:flutter_tv/screen/home_screen/section/sport/const/list_nba.dart';
import 'package:flutter_tv/screen/home_screen/section/sport/const/list_nfl.dart';

class Sport extends StatelessWidget {
  const Sport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Catalog(
              listImagem: listNBA(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listNFL(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listBaseBall(),
              actionClick: ActionCardClick.nullAction,
            ),
          ],
        ),
      ),
    );
  }
}
