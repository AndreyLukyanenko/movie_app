import 'package:flutter/material.dart';
import 'package:test_app/models/movie.dart';

class PortraitfilmDescription extends StatelessWidget {
  final Movie movie;
  const PortraitfilmDescription({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            movie.imageUrl,
            height: 400,
            width: 400,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movie.year.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movie.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
