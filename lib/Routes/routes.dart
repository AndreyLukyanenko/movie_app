import 'package:flutter/material.dart';
import 'package:test_app/BLoC/ui/Screens/Movie_List_Screen/movie_list_page_bloc.dart';
import 'package:test_app/BLoC/ui/Screens/Movie_Detail_Screen/movie_details_page_bloc.dart';
import 'package:test_app/MVVM/view/Screens/Movie_Detail_Screen/movie_detail_screen.dart';
import 'package:test_app/MVVM/view/Screens/Movie_List_Screen/movie_list_page.dart';
import 'package:test_app/main.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  MovieListPage.routeName: (context) => MovieListPage(),
  MovieListPageBloc.routeName: (context) => MovieListPageBloc(),
  MovieDetailScreen.routeName: (context) => MovieDetailScreen(),
  // MovieDetailsPageBloc.routeName: (context) => MovieDetailsPageBloc(),
};
