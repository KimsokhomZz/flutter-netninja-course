import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> data = {};
  bool _isInit = false;

  @override
  Widget build(BuildContext context) {
    if (!_isInit) {
      final arguments =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      if (arguments != null) {
        data = arguments;
      }
      _isInit = true;
    }
    print(data);

    String bgImage = (data['isDaytime'] ?? true) ? 'day.png' : 'night.png';
    Color bgColor =
        (data['isDaytime'] ?? true) ? Colors.blueAccent : Colors.indigo[700]!;
    Color textColor =
        (data['isDaytime'] ?? true) ? Colors.white : Colors.cyanAccent;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: DefaultTextStyle(
          style: TextStyle(color: textColor),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
              child: Column(
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      dynamic result = await Navigator.pushNamed(
                        context,
                        '/location',
                      );
                      if (result != null) {
                        setState(() {
                          data = result;
                        });
                      }
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text('Choose Location'),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'] ?? 'Location not found',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 2.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    data['time'] ?? 'Time not found',
                    style: TextStyle(fontSize: 48.0),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    icon: Icon(Icons.refresh),
                    label: Text('Reload Data'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: bgColor,
                      foregroundColor: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
