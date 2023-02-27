import 'package:flutter/material.dart';

class EditUpRight extends StatelessWidget {
  const EditUpRight({
    super.key,
    required this.label,
    required this.focusNode,
    required this.nextFocusNode,
    this.autofocus = false,
    this.maxLength = 100,
    this.keyboardType = TextInputType.emailAddress,
    this.obscureText = false,
    this.validate = false,
  });
  final String label;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final bool autofocus;
  final int maxLength;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool validate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onSubmitted: (value) {
              if (!validate) {
                FocusScope.of(context).requestFocus(nextFocusNode);
              } else {
                Navigator.pushReplacementNamed(context, "login");
              }
            },
            autofocus: autofocus,
            focusNode: focusNode,
            cursorColor: Colors.white,
            maxLength: maxLength,
            keyboardType: keyboardType,
            obscureText: obscureText,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(189, 21, 21, 35),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
      ],
    );
  }
}
