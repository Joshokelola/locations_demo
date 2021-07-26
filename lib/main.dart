import 'package:locations/pages/Hotel_carousel.dart';

import 'Location_carousel.dart';
import 'models/location_model.dart';
import 'package:flutter/material.dart';
import 'pages/location_detail.dart';

void main() {
  runApp(LocationApp());
}

class LocationApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locations App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        hoverColor: Color(0xFFF3F5F7),
      ),
      home: MyHomePage(title: 'Locations'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Where would you like to go?',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20.0),
            LocationCarousel(),
            const SizedBox(height: 20.0),
            HotelCarousel()
          ],
        ),
      ),
    );
  }

  Widget buildLocationsCard(Destination destination) {
    return Card();
  }
}
