import 'package:flutter/material.dart';

Drawer drawerTV(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(child: Text('Flutter TV')),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.home_outlined),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Home'),
              ),
            ],
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.reset_tv_outlined),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Início'),
              ),
            ],
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, "login");
          },
        ),
      ],
    ),
  );
}
