import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time='LOADING...';

  void setWorldTime() async {
    WorldTime instance= WorldTime(location: 'Berlin', flag: 'Berlin.png' , url: 'Europe/Berlin');
    await instance.setTime();
    setState(() {
      time=instance.time;
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
        child: Text(time),
      ),
    );
  }
}
