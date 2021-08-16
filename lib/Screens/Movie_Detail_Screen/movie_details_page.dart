import 'package:flutter/material.dart';
import 'package:test_app/components/film_builder.dart';
import 'package:test_app/components/landscape_film_description.dart';
import 'package:test_app/models/movie.dart';

class MovieDetailsPage extends StatefulWidget {
  final Movie movie;
  MovieDetailsPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  static String routeName = '/movie_details_page';

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    int _selectedId = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.movie.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: deviceOrientation == Orientation.portrait
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    widget.movie.imageUrl,
                    height: 400,
                    width: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.movie.year.toString(),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.movie.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            )
          : Row(
              children: [
                Expanded(
                  flex: 3,
                  child: FilmBuilder(onTap: (index) {
                    setState(() {
                      _selectedId = index;
                    });
                  }),
                ),
                LandscapeFilmDescription(id: _selectedId),
              ],
            ),
    );
  }
}
