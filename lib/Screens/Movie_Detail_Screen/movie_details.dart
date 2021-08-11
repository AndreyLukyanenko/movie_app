import 'package:flutter/material.dart';
import 'package:test_app/models/movie.dart';

class MovieDetailsPage extends StatelessWidget {
  final Movie movie;
  MovieDetailsPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  static String routeName = '/movie_details_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movie.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              movie.imageUrl,
              height: 400,
              width: 400,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.year.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
