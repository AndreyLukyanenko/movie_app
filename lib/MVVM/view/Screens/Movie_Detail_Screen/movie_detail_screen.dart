import 'package:flutter/material.dart';
import 'package:test_app/MVVM/view/components/movie_detail.dart';

class MovieDetailScreen extends StatelessWidget {
  static String routeName = '/movie_detail_mvvm';
  final int id;

  MovieDetailScreen({
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
      return MovieDetailPage(id: id);
    }

    return Scaffold(
        body: isLandscape ? _buildLandscape(context) : _buildPortait());
  }
}
