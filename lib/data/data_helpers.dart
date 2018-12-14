import 'package:advent14_google_map/model/deliver_delay.dart';
import 'package:flutter/material.dart';

DeliverDelay getDeliverDelayText(Duration deliverDelay) {
  if (deliverDelay.inMinutes == 0)
    return DeliverDelay(title: 'In time', color: Colors.green);
  else if (deliverDelay.inMilliseconds < 0)
    return DeliverDelay(
        title: 'Delay ${deliverDelay.inMinutes} min', color: Colors.red);
  else
    return DeliverDelay(
        title: 'In time +${deliverDelay.inMinutes} min',
        color: Colors.lightGreen);
}
