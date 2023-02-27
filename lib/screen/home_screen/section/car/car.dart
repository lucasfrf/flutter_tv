import 'package:flutter/material.dart';
import 'package:flutter_tv/components/catalog/catalog.dart';
import 'package:flutter_tv/enuns/action_card_click.dart';
import 'package:flutter_tv/screen/home_screen/section/car/const/list_f1.dart';
import 'package:flutter_tv/screen/home_screen/section/car/const/list_luxo.dart';

class Car extends StatelessWidget {
  const Car({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Catalog(
              listImagem: listLuxo(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listF1(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listLuxo(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listF1(),
              actionClick: ActionCardClick.nullAction,
            ),
          ],
        ),
      ),
    );
  }
}
