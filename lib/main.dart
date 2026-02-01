import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App with Google Fonts'),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: FilledButton.tonalIcon(
            onPressed: () {
              print("Button Clicked");
            },
            label: Text("Click Me"),
            icon: Icon(Icons.thumb_up),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purpleAccent,
          child: Text('click'),
        ),
      ),
    );
  }
}
