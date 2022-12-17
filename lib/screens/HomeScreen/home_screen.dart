import 'package:e_tick/components/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Header(
                  context: context,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieSliders(
                          sectionName: 'Trending Now',
                          movieList: List.generate(7, (index) => index)),
                      const MovieSliders(
                        sectionName: 'Current Movies',
                        movieList: [1, 0, 6],
                      ),
                      const MovieSliders(
                        sectionName: 'Upcoming Movies',
                        movieList: [2, 4, 3, 5],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MovieSliders extends StatelessWidget {
  final String sectionName;
  final List movieList;

  const MovieSliders({
    super.key,
    required this.sectionName,
    required this.movieList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          sectionName,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: movieList
                  .map(
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/images/posters/$index.jpg',
                          ),
                          height: 300,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
