import 'package:advent14_google_map/model/deliver_delay.dart';
import 'package:advent14_google_map/widget/address_widget.dart';
import 'package:flutter/material.dart';

class DeliverOverlayWidget extends StatelessWidget {
  final String name;
  final String street;
  final String city;
  final DeliverDelay deliverDelay;
  final double distance;

  const DeliverOverlayWidget({
    @required this.name,
    @required this.street,
    @required this.city,
    @required this.deliverDelay,
    @required this.distance,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        child: Stack(
          children: <Widget>[
            AddressWidget(name: name, street: street, city: city),
            Positioned(
              right: 8.0,
              top: 8.0,
              child: timeDeliverStatus(context),
            )
          ],
        ),
      );

  Widget timeDeliverStatus(BuildContext context) => Row(
        children: <Widget>[
          Container(
            color: deliverDelay.color,
            child: Text(
              deliverDelay.title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          )
        ],
      );
}
