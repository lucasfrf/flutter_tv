import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tv/screen/home_screen/home_screen.dart';
import 'package:flutter_tv/screen/login_screen/login_screen.dart';
import 'package:flutter_tv/screen/register/register.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});
  static const String title = 'Flutter TV';

  @override
  Widget build(BuildContext context) => Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{
          LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
        },
        child: MaterialApp(
          title: title,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: "login",
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case "login":
                return MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                });
              case "register":
                return MaterialPageRoute(builder: (context) {
                  return const Register();
                });
              case "home":
                return MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                });
              default:
                return null;
            }
          },
        ),
      );
}
