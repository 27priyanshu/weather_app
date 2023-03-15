import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Weather App'),
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            child: Image.asset('assets/menu.png'),color: Colors.white,
          )
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            'assets/night.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ],
      )),
    );
  }
}
