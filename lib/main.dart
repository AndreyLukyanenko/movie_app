import 'package:flutter/material.dart';
import 'package:test_app/Routes/routes.dart';
import 'package:test_app/Screens/Movie_Detail_Screen/movie_details.dart';

import 'Screens/Home_Screen/home_page.dart';
import 'Screens/Movie_List_Screen/movie_list_page.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}
