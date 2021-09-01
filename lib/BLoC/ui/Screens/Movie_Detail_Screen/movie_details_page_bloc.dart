import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:test_app/BLoC/ui/components/detail_bloc.dart';

class MovieDetailsPageBloc extends StatelessWidget {
  final int id;
  static String routeName = '/movie_details_screen_bloc';

  const MovieDetailsPageBloc({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final id = ModalRoute.of(context)!.settings.arguments as int;
    final deviceOrientation = MediaQuery.of(context).orientation;

    Widget _buildLandscape(BuildContext context) {
      Navigator.pop(context);
      return Container();
    }

    Widget _buildPortait() {
      return DetailBloc(
        id: id,
      );
    }

    return _buildPortait();
  }
}
