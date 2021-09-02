import 'package:flutter/material.dart';
import 'package:test_app/MVVM/models/movie_repository.dart';

class MovieDetailPage extends StatelessWidget {
  final int id;
  MovieDetailPage({
    required this.id,
  });

  static String routeName = '/movie_details_page';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            movieList[id].title,
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
                movieList[id].imageUrl,
                height: 400,
                width: 400,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movieList[id].year.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movieList[id].description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
