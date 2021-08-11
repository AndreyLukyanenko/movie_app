import 'package:flutter/material.dart';
import 'package:test_app/Routes/routes.dart';

import 'Screens/Home_Screen/home_page.dart';

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
