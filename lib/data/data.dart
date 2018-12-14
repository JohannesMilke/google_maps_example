import 'package:advent14_google_map/data/data_helpers.dart';
import 'package:advent14_google_map/model/deliver_delay.dart';

final DeliverDelay early = getDeliverDelayText(Duration(minutes: 9));
final DeliverDelay inTime = getDeliverDelayText(Duration());
final DeliverDelay late = getDeliverDelayText(Duration(minutes: -4));
