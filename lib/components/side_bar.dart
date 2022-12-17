import 'package:e_tick/provider/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideBar extends StatelessWidget {
  // final bool expanded;
  const SideBar({
    super.key,
    // required this.expanded,
  });

  @override
  Widget build(BuildContext context) {
    final expanded = Provider.of<MenuProvider>(context);
    Map menuOptions = {
      0: ['Menu', Icons.menu, () => expanded.toggleMenu()],
      1: ['Home', Icons.home, () {}],
      2: ['My Tickets', Icons.confirmation_number, () {}],
      3: ['My Account', Icons.account_circle, () {}],
    };
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: expanded.isMenuOpened
              ? [
                  for (var i = 0; i < menuOptions.length; i++)
                    SideButtonExpanded(menuOption: menuOptions[i])
                ]
              : [
                  for (var i = 0; i < menuOptions.length; i++)
                    SideButton(menuOption: menuOptions[i])
                ]),
    );
  }
}

class SideButton extends StatelessWidget {
  // final IconData icon;
  final List menuOption;
  const SideButton({
    super.key,
    required this.menuOption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape: const CircleBorder(),
        ),
        onPressed: menuOption[2],
        child: Icon(
          menuOption[1],
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}

class SideButtonExpanded extends StatelessWidget {
  final List menuOption;
  const SideButtonExpanded({
    super.key,
    required this.menuOption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
        ),
        onPressed: menuOption[2],
        child: SizedBox(
          width: 200,
          child: Row(
            children: [
              Icon(
                menuOption[1],
                size: 30,
                color: Colors.black,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                menuOption[0],
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
