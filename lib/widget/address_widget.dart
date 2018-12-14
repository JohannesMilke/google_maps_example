import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    @required this.name,
    @required this.street,
    @required this.city,
    Key key,
  }) : super(key: key);

  final String name;
  final String street;
  final String city;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Deliver to', style: Theme.of(context).textTheme.caption),
            SizedBox(height: 8.0),
            Text(
              name,
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            Text(street),
            Text(city),
          ],
        ),
      );
}
