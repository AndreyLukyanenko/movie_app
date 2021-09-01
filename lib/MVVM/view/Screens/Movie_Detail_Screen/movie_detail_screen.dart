import 'package:flutter/material.dart';
import 'package:test_app/BLoC/ui/Screens/Movie_Detail_Screen/movie_details_page_bloc.dart';
import 'package:test_app/MVVM/view/components/movie_details.dart';

class MovieDetailScreen extends StatelessWidget {
  static const routeName = '/movie_detail_mvvm';
  final int? selectedId;
  const MovieDetailScreen({Key? key, this.selectedId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(),
      body: deviceOrientation == Orientation.portrait
          ? MovieDetailsPage(selectedId as int)
          : Container(),
    );
  }
}
