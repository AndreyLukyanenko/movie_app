import 'package:flutter/material.dart';
import 'package:test_app/MVVM/models/movie_repository.dart';

class LandscapeFilmDescription extends StatelessWidget {
  final int id;

  LandscapeFilmDescription({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 50.0, left: 50.0),
          child: Text(
            movieList[id].description.toString(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
