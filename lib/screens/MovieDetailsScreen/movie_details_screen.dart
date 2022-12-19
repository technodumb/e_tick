import 'package:e_tick/database/moviedata.dart';
import 'package:e_tick/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:e_tick/components/components.dart';
import 'package:provider/provider.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final int index = ModalRoute.of(context)!.settings.arguments as int;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final selectedIndex =
        Provider.of<MovieSelectProvider>(context).selectedMovie;
    final Movie movie = movieData[selectedIndex]!;
    return SafeArea(
      child: Scaffold(
        // drawer: const SideBar(),
        body: Row(
          children: [
            const SideBar(),
            Expanded(
              child: Column(
                children: [
                  Header(
                    context: context,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.05,
                              horizontal: width * 0.05,
                            ),
                            // height: height * 0.5,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black,
                                  Colors.black.withOpacity(0.5),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      width: width * 0.3,
                                      image: AssetImage(
                                        movie.image,
                                      ),
                                    ),
                                    // const Spacer(),
                                    SizedBox(
                                      width: width * 0.05,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          movie.name,
                                          style: TextStyle(
                                              fontSize: width * 0.03,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        SizedBox(
                                          width: width * 0.44,
                                          child: Text(
                                            movie.description,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                ),
                                Row(children: []),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
