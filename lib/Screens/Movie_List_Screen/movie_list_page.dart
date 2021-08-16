import 'package:flutter/material.dart';

import 'package:test_app/Screens/Movie_Detail_Screen/movie_details_page.dart';
import 'package:test_app/components/film_builder.dart';
import 'package:test_app/components/landscape_film_description.dart';
import 'package:test_app/models/movie.dart';

class MovieListPage extends StatefulWidget {
  static String routeName = '/movie_list_page';

  const MovieListPage({
    Key? key,
  }) : super(key: key);

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
    return ListView.builder(
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        Movie movie = movieList[index];
        return Card(
          child: ListTile(
            selectedTileColor: Colors.grey,
            title: Text(
              movie.title,
            ),
            subtitle: Text(movie.year.toString()),
            leading: Image.network(movie.imageUrl),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              setState(() {
                selectedId = index;
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailsPage(
                    movie: movie,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
