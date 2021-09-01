import 'package:flutter/material.dart';
import 'package:test_app/BLoC/ui/Screens/Movie_List_Screen/movie_list_page_bloc.dart';
import 'package:test_app/Routes/routes.dart';

import 'MVVM/view/Screens/Movie_List_Screen/movie_list_page.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  TestApp({
    Key? key,
  }) : super(key: key);
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

class HomePage extends StatelessWidget {
  static String routeName = "/home_page";

  final String header = 'Choose your destiny';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            header,
            style: TextStyle(fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MovieListPageBloc.routeName);
                  },
                  child: Text('BLoC'),
                  textColor: Colors.black,
                  color: Colors.teal,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MovieListPage.routeName);
                  },
                  child: Text('MVVM'),
                  textColor: Colors.black,
                  color: Colors.teal,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
