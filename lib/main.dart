import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: KaizenCard()));
}

class KaizenCard extends StatelessWidget {
  const KaizenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Kaizen ID Card'),
        centerTitle: true,
        backgroundColor: Colors.amber[600],
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kaizenImage.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: GoogleFonts.lato(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Kaizen',
              style: TextStyle(
                color: Colors.amberAccent[400],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: GoogleFonts.lato(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '9',
              style: TextStyle(
                color: Colors.amberAccent[400],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width: 10.0),
                Text(
                  'kaizen@example.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
