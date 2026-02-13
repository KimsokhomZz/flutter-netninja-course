import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_first_flutter_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(urlEndpoint: 'Asia/Phnom_Penh', location: 'Phnom Penh', flag: 'cambodia.png'),
    WorldTime(urlEndpoint: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(
      urlEndpoint: 'Europe/Berlin',
      location: 'Athens',
      flag: 'greece.png',
    ),
    WorldTime(
      urlEndpoint: 'Africa/Cairo',
      location: 'Cairo',
      flag: 'egypt.png',
    ),
    WorldTime(
      urlEndpoint: 'Africa/Nairobi',
      location: 'Nairobi',
      flag: 'kenya.png',
    ),
    WorldTime(
      urlEndpoint: 'America/Chicago',
      location: 'Chicago',
      flag: 'usa.png',
    ),
    WorldTime(
      urlEndpoint: 'America/New_York',
      location: 'New York',
      flag: 'usa.png',
    ),
    WorldTime(
      urlEndpoint: 'Asia/Seoul',
      location: 'Seoul',
      flag: 'south_korea.png',
    ),
    WorldTime(
      urlEndpoint: 'Asia/Jakarta',
      location: 'Jakarta',
      flag: 'indonesia.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Choose Location'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
                title: Text(locations[index].location),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
          );
        },
      ),
    );
  }
}
