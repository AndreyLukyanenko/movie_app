import 'package:flutter/material.dart';
import 'package:test_app/view/Screens/Home_Screen/home_page.dart';
import 'package:test_app/view/Screens/Movie_Detail_Screen/movie_details_page.dart';
import 'package:test_app/view/Screens/Movie_List_Screen/movie_list_page.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  MovieListPage.routeName: (context) => MovieListPage(),
  // MovieDetailsPage.routeName: (context) => MovieDetailsPage(),
};
