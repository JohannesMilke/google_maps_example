import 'package:advent14_google_map/data/data.dart';
import 'package:advent14_google_map/widget/deliver_overlay_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsWidget extends StatefulWidget {
  @override
  GoogleMapsWidgetState createState() => GoogleMapsWidgetState();
}

class GoogleMapsWidgetState extends State<GoogleMapsWidget> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: onMapCreated,
          ),
          DeliverOverlayWidget(
            name: 'Alexandra Meier',
            street: 'Hamburgerstreet 12',
            city: '12162 Berlin',
            deliverDelay: late,
            distance: 3.0,
          ),
        ],
      );

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}
