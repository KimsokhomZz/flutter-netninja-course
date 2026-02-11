import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading...';

  void setCambodiaTime() async {
    WorldTime instance = WorldTime(
      location: 'Phnom Penh',
      flag: 'cambodia.png',
      urlEndpoint: 'Asia/Phnom_Penh',
    );

    await instance.getCambodiaTime();
    print(instance.time);

    // set time
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setCambodiaTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(time)));
  }
}
