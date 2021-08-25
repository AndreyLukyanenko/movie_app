import 'package:flutter/material.dart';
import 'package:test_app/models/movie.dart';
import 'package:test_app/models/movie_repository.dart';

import 'package:test_app/view/Screens/Movie_Detail_Screen/movie_details_page.dart';
import 'package:test_app/view/components/film_builder.dart';
import 'package:test_app/view/components/landscape_film_description.dart';

class MovieListPage extends StatefulWidget {
  static String routeName = '/movie_list_page';
  // final String movieTitle;
  // final String movieDetail;
  // final String movieImg;

  // const MovieListPage(this.movieTitle, this.movieDetail, this.movieImg);

  // void _showDetailPage(BuildContext context) {
  //   Navigator.of(context).pushNamed(MovieDetailsPage.routeName, arguments: {
  //     'title': movieTitle,
  //     'detail': movieDetail,
  //     'image': movieImg,
  //   });
  // }

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
      setState(() {
        selectedId = index;
      });
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MovieDetailsPage(selectedId)));
    });
  }
}
