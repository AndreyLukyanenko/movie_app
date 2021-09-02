import 'package:flutter/material.dart';
import 'package:test_app/MVVM/view/components/film_builder.dart';
import 'package:test_app/MVVM/view/components/landscape_film_description.dart';
import 'package:test_app/MVVM/view/components/movie_detail.dart';

class MovieListPage extends StatefulWidget {
  static String routeName = '/movie_list_page';

  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  int selectedId = 1;
  var _isLandscape = false;

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
                              MovieDetailPage(id: selectedId)));
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
