import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/pages/loading.dart';
import 'package:my_first_flutter_app/pages/choose_location.dart';
import 'package:my_first_flutter_app/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ),
  );
}
