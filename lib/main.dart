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
        primaryColor: Colors.white,
        accentColor: Colors.black,
        scaffoldBackgroundColor: Colors.white70,
        hoverColor: Colors.white54,
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Locations.places.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return LocationDetail(location: Locations.places[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildLocationsCard(Locations.places[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildLocationsCard(Locations location) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(location.imageUrl)),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              location.label,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  fontFamily: 'Roboto'),
            ),
          ],
        ),
      ),
    );
  }
}
