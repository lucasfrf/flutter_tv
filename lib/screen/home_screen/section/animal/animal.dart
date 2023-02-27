import 'package:flutter/material.dart';
import 'package:flutter_tv/components/catalog/catalog.dart';
import 'package:flutter_tv/enuns/action_card_click.dart';
import 'package:flutter_tv/screen/home_screen/section/animal/const/list_animal.dart';
import 'package:flutter_tv/screen/home_screen/section/animal/const/list_pet.dart';

class Animal extends StatelessWidget {
  const Animal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Catalog(
              listImagem: listAnimal(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listPet(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listAnimal(),
              actionClick: ActionCardClick.nullAction,
            ),
            Catalog(
              listImagem: listPet(),
              actionClick: ActionCardClick.nullAction,
            ),
          ],
        ),
      ),
    );
  }
}
