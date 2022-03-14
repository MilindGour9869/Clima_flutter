
import 'package:geolocator/geolocator.dart';

class Location {
   double x,y;


  Future<void> getCurrentLocation() async {
    try{
      final Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
     x=position.latitude;
     y=position.longitude;

      } catch(e)
    {
      print(e);
    }
  }

}