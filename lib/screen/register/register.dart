import 'package:flutter/material.dart';
import 'package:flutter_tv/components/button/button.dart';
import 'package:flutter_tv/components/edit/edit_upright.dart';
import 'package:flutter_tv/enuns/action_button_click.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode focus1 = FocusNode();
    FocusNode focus2 = FocusNode();
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 400,
            height: 300,
            child: Column(
              children: [
                EditUpRight(
                    label: 'Nome Perfil',
                    focusNode: focus1,
                    keyboardType: TextInputType.visiblePassword,
                    nextFocusNode: focus2),
                EditUpRight(
                  label: 'Criar Senha',
                  obscureText: true,
                  maxLength: 4,
                  keyboardType: TextInputType.number,
                  focusNode: focus2,
                  nextFocusNode: focus1,
                  validate: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Button(
                      height: 40,
                      width: 130,
                      label: 'Voltar',
                      icon: Icons.reset_tv_outlined,
                      actionButtonClick: ActionButtonClick.openLoginScreen,
                    ),
                    Button(
                      height: 40,
                      width: 130,
                      label: 'Criar Perfil',
                      icon: Icons.post_add_outlined,
                      actionButtonClick: ActionButtonClick.openLoginScreen,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                width: 200,
                height: MediaQuery.of(context).size.height,
                color: const Color.fromARGB(100, 255, 80, 80),
                child: const Center(
                    child: Text(
                  'Novo Perfil',
                  style: TextStyle(fontSize: 28),
                ))),
          ),
        ],
      ),
    );
  }
}
