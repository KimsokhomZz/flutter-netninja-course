import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location; // location name for the UI
  late String time; // the time in that location
  String flag; // url to an asset flag icon
  String urlEndpoint; // location url for API endpoint

  WorldTime({
    required this.location,
    required this.flag,
    required this.urlEndpoint,
  });
  Future<void> getCambodiaTime() async {
    // Make request to API
    String url = 'https://time.now/developer/api/timezone/$urlEndpoint';
    http.Response response = await http.get(Uri.parse(url));
    Map data = jsonDecode(response.body);

    // Get property from data
    String datatime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    // print('Datatime: $datatime');
    // print('Offset: $offset');

    // Create DataTime object
    DateTime now = DateTime.parse(datatime);
    now = now.add(Duration(hours: int.parse(offset)));
    // print('Cambodia Time: $now');

    // Set the time property
    time = now.toString();
  }
}
