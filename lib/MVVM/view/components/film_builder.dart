import 'package:flutter/material.dart';
import 'package:test_app/MVVM/models/movie.dart';
import 'package:test_app/MvVM/models/movie_repository.dart';

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
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        Movie movie = movieList[index];
        return Container(
          color: _selectedIndex == index ? Colors.teal : Colors.white,
          child: Card(
            child: ListTile(
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
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        );
      },
    );
  }
}
