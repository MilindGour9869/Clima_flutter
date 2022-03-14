import 'package:flutter/material.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';





class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}



class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlocation();
  }

void getlocation() async{



var weather = await WeatherModel().getlocationweather();


Navigator.push(context, MaterialPageRoute(builder: (context)
{
  return LocationScreen(weather);}

  ));


}








    @override
    Widget build(BuildContext context) {

      return Scaffold(
        body:Center(
          child: SpinKitDoubleBounce(
            size:60,
            color: Colors.white,
          ),
        )

      );

    }
  }




