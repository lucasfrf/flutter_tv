import 'package:flutter/material.dart';

Positioned background(BuildContext context) {
  return Positioned(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Image.asset('images/fundo_lua.png', fit: BoxFit.fill),
  );
}
