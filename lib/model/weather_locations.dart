// contains all the data to be displayed
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    @required this.city,
    @required this.dateTime,
    @required this.temparature,
    @required this.weatherType,
    @required this.iconUrl,
    @required this.wind,
    @required this.rain,
    @required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Guwahati',
    dateTime: '09:50 PM — Saturday, 30 Mar 2024',
    temparature: '24\u2103',
    weatherType: 'Night',
    iconUrl: 'assets/moon.svg',
    wind: 12,
    rain: 2,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'London',
    dateTime: '02:20 PM — Saturday, 30 Mar 2024',
    temparature: '8\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'New York',
    dateTime: '11:30 PM — Saturday, 29 Mar 2024',
    temparature: '15\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sunny.svg',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Edinburgh',
    dateTime: '01:20 AM — Saturday, 30 Mar 2024',
    temparature: '6\u2103',
    weatherType: 'Rainy',
    iconUrl: 'assets/rainy.svg',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];
