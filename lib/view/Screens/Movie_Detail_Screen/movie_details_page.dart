import 'package:flutter/material.dart';
import 'package:test_app/models/movie_repository.dart';
import 'package:test_app/view/components/film_builder.dart';
import 'package:test_app/view/components/landscape_film_description.dart';

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
    final deviceOrientation = MediaQuery.of(context).orientation;
    int _selectedId = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          movieList[widget.id].title,
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
                    movieList[widget.id].imageUrl,
                    height: 400,
                    width: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      movieList[widget.id].year.toString(),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
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
            )
          : Row(
              children: [
                Expanded(
                  flex: 3,
                  child: FilmBuilder(onTap: (index) {
                    setState(() {
                      Navigator.pop(context);
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
