import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/widgets/single_weather.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // title: Text(
        //   'Weather App',
        //   textAlign: TextAlign.center,
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          // onPressed: () {},
        ),
        actions: [
          Container(
            child: GestureDetector(
                onTap: () => print('Menu Clicked!'),
                child: Image.asset('assets/menu-white.jpg')),
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
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(top: 140, left: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 12,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              )
            ]),
          ),
          PageView.builder(
            itemBuilder: (ctx, i) => SingleWeather(),
          )
        ],
      )),
    );
  }
}
