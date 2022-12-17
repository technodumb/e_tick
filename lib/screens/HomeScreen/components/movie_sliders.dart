import 'package:e_tick/provider/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final movieSelectProvider = Provider.of<MovieSelectProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          sectionName,
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
                        onHover: (value) {
                          if (value) {
                            movieSelectProvider.setHoveredMovie(index);
                            print(movieSelectProvider.hoveredMovie);
                          } else {
                            movieSelectProvider.setHoveredMovie(-1);
                          }
                        },
                        child: MovieBox(
                          index: index,
                          isHovered: movieSelectProvider.hoveredMovie == index,
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

class MovieBox extends StatelessWidget {
  final int index;
  final bool isHovered;
  const MovieBox({super.key, required this.index, this.isHovered = false});

  @override
  Widget build(BuildContext context) {
    print(isHovered);
    return Stack(
      children: [
        Image(
          image: AssetImage(
            'assets/images/posters/${index % 10}.jpg',
          ),
          height: 300,
        ),
        if (isHovered)
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Play',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
