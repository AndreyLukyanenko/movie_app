import 'package:flutter/material.dart';
import 'package:test_app/Screens/Movie_List_Screen/movie_list_page.dart';
import 'package:test_app/components/choosePatternButton.dart';

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
                ChoosePatternButton(
                  title: 'BLoC',
                  onPress: () {
                    Navigator.pushNamed(context, MovieListPage.routeName);
                  },
                ),
                ChoosePatternButton(
                  title: 'MVVC',
                  onPress: () {
                    Navigator.pushNamed(context, MovieListPage.routeName);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
