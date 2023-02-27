import 'package:flutter/material.dart';
import 'package:flutter_tv/screen/login_screen/section/backgound.dart';
import 'package:flutter_tv/screen/login_screen/section/choose_profile.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey listKey = GlobalKey();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          background(context),
          chooseProfile(context, listKey),
        ],
      ),
    );
  }
}
