import 'package:flutter/material.dart';
import 'package:test_app/MVVM/view/components/film_builder.dart';
import 'package:test_app/MVVM/view/components/landscape_film_description.dart';
import 'package:test_app/MVVM/view/components/movie_details.dart';

class MovieListPage extends StatefulWidget {
  static String routeName = '/movie_list_page';

  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  int selectedId = 0;
  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Films',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: deviceOrientation == Orientation.portrait
          ? _buildPortraitListViewOfFilms()
          : _buildLandscapeListViewOfFilms(),
    );
  }

  Widget _buildLandscapeListViewOfFilms() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: FilmBuilder(onTap: (index) {
            setState(() {
              selectedId = index;
            });
          }),
        ),
        LandscapeFilmDescription(id: selectedId),
      ],
    );
  }

  Widget _buildPortraitListViewOfFilms() {
    return FilmBuilder(onTap: (index) {
      selectedId = index;

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MovieDetailsPage(selectedId),
        ),
      );
    });
  }
}
