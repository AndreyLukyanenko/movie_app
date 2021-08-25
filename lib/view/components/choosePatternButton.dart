import 'package:flutter/material.dart';

class ChoosePatternButton extends StatelessWidget {
  final String title;
  final Function() onPress;
  const ChoosePatternButton({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPress,
      child: Text(title),
      textColor: Colors.black,
      color: Colors.teal,
    );
  }
}
