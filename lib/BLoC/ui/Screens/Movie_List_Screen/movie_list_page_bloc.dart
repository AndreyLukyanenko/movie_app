import 'package:flutter/material.dart';
import 'package:test_app/BLoC/ui/components/film_builder_bloc.dart';
import 'package:test_app/BLoC/ui/components/landscape_film_description_bloc.dart';
import 'package:test_app/BLoC/ui/Screens/Movie_Detail_Screen/movie_details_page_bloc.dart';

class MovieListPageBloc extends StatefulWidget {
  static String routeName = '/movie_list_page_bloc';

  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPageBloc> {
  var _isLandscape = false;
  int selectedId = 1;
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
      body: OrientationBuilder(
        builder: (context, orientation) {
          deviceOrientation == Orientation.landscape
              ? _isLandscape = true
              : _isLandscape = false;
          return Row(
            children: [
              Expanded(
                child: FilmBuilder(
                  onTap: (index) {
                    if (_isLandscape) {
                      setState(() {
                        selectedId = index;
                      });
                    } else {
                      selectedId = index;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MovieDetailsPageBloc(id: selectedId)));
                    }
                  },
                ),
              ),
              _isLandscape
                  ? Expanded(
                      flex: 2,
                      child: LandscapeFilmDescription(id: selectedId),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }
}
