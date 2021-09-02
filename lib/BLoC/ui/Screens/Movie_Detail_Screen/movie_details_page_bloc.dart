import 'package:flutter/material.dart';

import 'package:test_app/BLoC/ui/components/detail_bloc.dart';

class MovieDetailsPageBloc extends StatelessWidget {
  final int id;
  static String routeName = '/movie_details_screen_bloc';

  MovieDetailsPageBloc({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLandscape = false;
    (MediaQuery.of(context).orientation == Orientation.landscape)
        ? isLandscape = true
        : isLandscape = false;

    Widget _buildLandscape(BuildContext context) {
      Navigator.pop(context);
      return Container();
    }

    Widget _buildPortait() {
      return DetailBloc(
        id: id,
      );
    }

    return Scaffold(
        body: isLandscape ? _buildLandscape(context) : _buildPortait());
  }
}
