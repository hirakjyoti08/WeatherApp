import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/model/weather_locations.dart';
import 'package:weather_app/widget/single_weather.dart';
import 'package:weather_app/model/weather_locations.dart';

class WeatherApp extends StatelessWidget {
  //const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Weather'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: GestureDetector(
              onTap: () => print('clicked'),
              child: SvgPicture.asset(
                'assets/menu.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                'assets/night.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              // Container(
              //   decoration: BoxDecoration(color: Colors.white38),
              // ),
              Container(
                margin: EdgeInsets.only(top: 140, left: 25),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 12,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: locationList.length,
                itemBuilder: (ctx, i) => SingleWeather(i),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
