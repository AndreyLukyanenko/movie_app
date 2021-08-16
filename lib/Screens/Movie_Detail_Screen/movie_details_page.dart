import 'package:flutter/material.dart';
import 'package:test_app/components/film_builder.dart';
import 'package:test_app/components/landscape_film_description.dart';
import 'package:test_app/components/movie_detail_portrait.dart';
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
    int selectedId = 0;
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
          ? PortraitfilmDescription(
              movie: widget.movie,
            )
          : Row(
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
            ),
    );
  }
}
