import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        iconSize: 30,
                        splashRadius: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "E-Tick",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]),
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
                            child: TextField(
                              decoration: InputDecoration(
                                // make it rounded
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide.none,
                                ),
                              ),
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
                          icon: Icon(Icons.notifications_none_outlined),
                          onPressed: () {},
                          iconSize: 30,
                          splashRadius: 25,
                        ),
                        IconButton(
                          icon: Icon(Icons.person_outlined),
                          onPressed: () {},
                          iconSize: 30,
                          splashRadius: 25,
                        ),
                      ],
                    ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     hintText: "Search",
                    //     hintStyle: TextStyle(
                    //       color: Colors.black,
                    //     ),
                    //     prefixIcon: Icon(
                    //       Icons.search,
                    //       color: Colors.black,
                    //     ),
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
