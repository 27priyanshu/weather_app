import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            'assets/sunny2.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Text("Delhi",
                    style: GoogleFonts.lato(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          )
        ],
      )),
    );
  }
}
