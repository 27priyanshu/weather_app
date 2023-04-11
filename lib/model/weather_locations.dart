import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temperature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temperature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
      city: 'Delhi',
      dateTime: '07:50 PM - Monday, 24 Mar 2023',
      temperature: "24\u2103",
      weatherType: 'Night',
      iconUrl: 'assets/moon.png',
      wind: 10,
      rain: 2,
      humidity: 10),
  WeatherLocation(
      city: 'London',
      dateTime: '02:50 PM - Monday, 24 Mar 2023',
      temperature: "14\u2103",
      weatherType: 'Sunny',
      iconUrl: 'assets/sunny2.png',
      wind: 8,
      rain: 7,
      humidity: 82),
  WeatherLocation(
      city: 'Sydney',
      dateTime: '01:20 AM - Tuesday, 25 Mar 2023',
      temperature: "10\u2103",
      weatherType: 'Rainy',
      iconUrl: 'assets/cloudy.jpg',
      wind: 5,
      rain: 15,
      humidity: 61),
  WeatherLocation(
      city: 'Kashmir',
      dateTime: '07:50 PM - Monday, 24 Mar 2023',
      temperature: "4\u2103",
      weatherType: 'Night',
      iconUrl: 'assets/moon.png',
      wind: 8,
      rain: 7,
      humidity: 82),
];
