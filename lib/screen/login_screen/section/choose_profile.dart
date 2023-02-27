import 'package:flutter/material.dart';
import 'package:flutter_tv/screen/login_screen/section/profile.dart';

Positioned chooseProfile(BuildContext context, GlobalKey key) {
  return Positioned(
    width: 500,
    height: 300,
    child: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color.fromARGB(189, 21, 21, 35),
      ),
      child: const Profile(),
    ),
  );
}
