import 'package:locations/models/location_model.dart';
import 'package:flutter/material.dart';

class LocationDetail extends StatefulWidget {
  final Destination destination;

  const LocationDetail({Key? key, required this.destination}) : super(key: key);

  @override
  _LocationDetailState createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.city),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.destination.imageUrl),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.destination.city,
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
