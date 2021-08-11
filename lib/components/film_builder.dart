import 'package:flutter/material.dart';
import 'package:test_app/models/movie.dart';

typedef Null ItemSelectedCallback(int value);

class FilmBuilder extends StatefulWidget {
  final ItemSelectedCallback onTap;

  FilmBuilder({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  _FilmBuilderState createState() => _FilmBuilderState();
}

class _FilmBuilderState extends State<FilmBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        Movie movie = movieList[index];
        return Card(
          child: ListTile(
            selectedTileColor: Colors.black,
            title: Text(
              movie.title,
            ),
            subtitle: Text(
              movie.year.toString(),
            ),
            leading: Image.network(movie.imageUrl),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              widget.onTap(index);
            },
          ),
        );
      },
    );
  }
}
