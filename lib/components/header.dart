import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final BuildContext context;
  const Header({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              iconSize: 30,
              splashRadius: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "E-Tick",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: width * 0.3,
                height: 50,
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    // make it rounded
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 60,
                decoration: const BoxDecoration(
                    color: Color(0xCCCCCCFF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )),
                child: IconButton(
                  // padding: EdgeInsets.all(8),
                  splashRadius: 10,
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   width: 0,
        // ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {},
              iconSize: 30,
              splashRadius: 25,
            ),
            IconButton(
              icon: const Icon(Icons.person_outlined),
              onPressed: () {},
              iconSize: 30,
              splashRadius: 25,
            ),
          ],
        ),
      ],
    );
  }
}
