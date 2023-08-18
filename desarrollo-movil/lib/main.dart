import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Recetas());

class Recetas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
        primary: Colors.green,
        secondary: Colors.white
      )
      ),
      title: 'Recipe App',
      home: Home('Recipe App')
    );
  }
}

