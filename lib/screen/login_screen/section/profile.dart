import 'package:flutter/material.dart';
import 'package:flutter_tv/components/button/button.dart';
import 'package:flutter_tv/components/catalog/catalog.dart';
import 'package:flutter_tv/enuns/action_button_click.dart';
import 'package:flutter_tv/enuns/action_card_click.dart';
import 'package:flutter_tv/screen/login_screen/const/list_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Catalog(
                title: 'Perfis',
                listImagem: listProfile(),
                actionClick: ActionCardClick.openHomeScreen,
                expand: false,
              ),
              const Button(
                height: 40,
                width: 130,
                label: 'Novo Perfil',
                icon: Icons.add_reaction_outlined,
                actionButtonClick: ActionButtonClick.openRegisterScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
