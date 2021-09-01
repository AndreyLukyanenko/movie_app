import 'package:flutter/material.dart';
import 'package:test_app/MVVM/models/movie_repository.dart';

class MovieDetailsPage extends StatefulWidget {
  final int id;
  MovieDetailsPage(
    this.id,
  );

  static String routeName = '/movie_details_page';

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            movieList[widget.id].title,
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
                movieList[widget.id].imageUrl,
                height: 400,
                width: 400,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movieList[widget.id].year.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movieList[widget.id].description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
