// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.red,
          title: Text('Weather Forecast'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
            child: Column(
              children: [
                _searchCity(),
                SizedBox(
                  height: 35,
                ),
                _cityName(),
                SizedBox(
                  height: 50,
                ),
                _temperature(),
                SizedBox(height: 30),
                _additionalFeatures(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '7-DAY WEATHER FORECAST',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                _forecast(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextField _searchCity() {
  return TextField(
    decoration: InputDecoration(
        hintText: "Enter city name",
        hintStyle: TextStyle(color: Colors.white),
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        border: InputBorder.none),
  );
}

Column _cityName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Minskaya oblast, BY',
        style: TextStyle(fontSize: 40, color: Colors.white),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        'Thursday, Nov 17, 2021',
        style: TextStyle(fontSize: 14, color: Colors.white),
      )
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Icon(
          Icons.wb_sunny,
          size: 60,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Text(
            '14°F',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 60, color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Light snow',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Row _additionalFeatures() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(
            Icons.ac_unit_sharp,
            color: Colors.white,
          ),
          Text(
            '5',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'km/h',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit_sharp,
            color: Colors.white,
          ),
          Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit_sharp,
            color: Colors.white,
          ),
          Text(
            '20',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Widget _forecast() {
  return SizedBox(
    height: 100,
    child: ListView(
      // itemExtent: 100,
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 30,
            width: 140,
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Monday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '6°F',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 30,
            width: 140,
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Tuesday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '12°F',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 30,
            width: 140,
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Wednesday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '13°F',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 30,
            width: 140,
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Thursday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '19°F',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 30,
            width: 140,
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Friday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '7°F',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 30,
            width: 140,
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Saturday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '5°F',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 30,
            width: 140,
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Sunday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '7°F',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
