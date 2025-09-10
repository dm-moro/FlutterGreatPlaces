import 'package:flutter/material.dart';
import 'package:great_places/screens/place_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import '../utils/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        secondaryHeaderColor: Colors.amber,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        )
      ),
      home: PlaceFormScreen(),
      routes: {AppRoutes.PLACE_FORM: (ctx) => PlaceFormScreen()},
    );
  }
}
