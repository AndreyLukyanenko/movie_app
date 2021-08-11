import 'package:flutter/material.dart';
import 'package:test_app/Screens/Movie_Details_Screen/movie_details.dart';
import 'package:test_app/Screens/Movie_List_Screen/movie_list_page.dart';
import 'package:test_app/Screens/Home_Screen/home_page.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  MovieListPage.routeName: (context) => MovieListPage(),
  // MovieDetailsPage.routeName: (context) => MovieDetailsPage(),
};
