import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/model/weather_locations.dart';
import 'package:weather_app/widgets/single_weather.dart';
import 'package:weather_app/widgets/slider_dot.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int _currentPage = 0;
  late String bgImg ; 


  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[_currentPage].weatherType == 'Sunny') {
      bgImg = 'assets/sunny2.jpg';
    } else if (locationList[_currentPage].weatherType == 'Night') {
      bgImg = 'assets/night.jpg';
    } else if (locationList[_currentPage].weatherType == 'Rainy') {
      bgImg = 'assets/cloudy.jpg';
    }

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
            bgImg,
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
              for (int i = 0; i < locationList.length; i++)
                if (i == _currentPage) SliderDot(true) else SliderDot(false)
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 5),
              //   width: 12,
              //   height: 5,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(5))),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 5),
              //   width: 5,
              //   height: 5,
              //   decoration: BoxDecoration(
              //       color: Colors.white54,
              //       borderRadius: BorderRadius.all(Radius.circular(5))),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 5),
              //   width: 5,
              //   height: 5,
              //   decoration: BoxDecoration(
              //       color: Colors.white54,
              //       borderRadius: BorderRadius.all(Radius.circular(5))),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 5),
              //   width: 5,
              //   height: 5,
              //   decoration: BoxDecoration(
              //       color: Colors.white54,
              //       borderRadius: BorderRadius.all(Radius.circular(5))),
              // )
            ]),
          ),
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onPageChanged,
            itemCount: locationList.length,
            itemBuilder: (ctx, i) => SingleWeather(i),
          )
        ],
      )),
    );
  }
}
