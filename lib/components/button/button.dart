import 'package:flutter/material.dart';
import 'package:flutter_tv/enuns/action_button_click.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.height,
    required this.width,
    required this.label,
    required this.icon,
    required this.actionButtonClick,
    this.color = Colors.black12,
  });
  final double height;
  final double width;
  final String label;
  final IconData icon;
  final ActionButtonClick actionButtonClick;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.white,
      onTap: () {
        switch (actionButtonClick) {
          case ActionButtonClick.openRegisterScreen:
            Navigator.pushReplacementNamed(context, "register");
            break;
          case ActionButtonClick.openLoginScreen:
            Navigator.pushReplacementNamed(context, "login");
            break;
          default:
            null;
        }
      },
      child: SizedBox(
        height: height,
        width: width,
        child: Card(
          color: color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                  child: Icon(
                icon,
                color: Colors.white,
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
