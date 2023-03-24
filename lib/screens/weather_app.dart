import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            'assets/night.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150,
                          ),
                          Text("Delhi",
                              style: GoogleFonts.lato(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('07:50 PM - Monday, 24 Mar 2023',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,

                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: 120,
                          // ),
                          Text("24\u2103",
                              style: GoogleFonts.lato(
                                  fontSize: 85,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white)),
                          Row(
                            children: [
                              Icon(
                                Icons.nightlight_outlined,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Night",
                                  style: GoogleFonts.lato(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white30)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Wind",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("10",
                              style: GoogleFonts.lato(
                                  fontSize: 22,

                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("km/h",
                              style: GoogleFonts.lato(
                                  fontSize: 14,

                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.white38,
                              ),
                              Container(
                                height: 5,
                                width: 10,
                                color: Colors.greenAccent,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Rain",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("2",
                              style: GoogleFonts.lato(
                                  fontSize: 22,

                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("%",
                              style: GoogleFonts.lato(
                                  fontSize: 14,

                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.white38,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                color: Colors.greenAccent,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Humidity",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("10",
                              style: GoogleFonts.lato(
                                  fontSize: 22,

                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("%",
                              style: GoogleFonts.lato(
                                  fontSize: 14,

                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                color: Colors.white38,
                              ),
                              Container(
                                height: 5,
                                width: 40,
                                color: Colors.greenAccent,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
