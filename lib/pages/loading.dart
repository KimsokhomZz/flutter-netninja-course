import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    setCambodiaTime();
  }

  Future<void> setCambodiaTime() async {
    WorldTime instance = WorldTime(
      location: 'Phnom Penh',
      flag: 'cambodia.png',
      urlEndpoint: 'Asia/Phnom_Penh',
    );

    await instance.getCambodiaTime();

    if (!mounted) return;
    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(child: SpinKitThreeBounce(color: Colors.white, size: 40.0)),
    );
  }
}
