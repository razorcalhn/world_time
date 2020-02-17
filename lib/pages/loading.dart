import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  void setWorldTime() async {
    WorldTime instance= WorldTime(location: 'India', flag: 'India.png' , url: 'Asia/Kolkata');
    await instance.setTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
    });


  }



  @override
  void initState() {
    super.initState();
    setWorldTime();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Text('Loading...'),
      ),
    );
  }
}
