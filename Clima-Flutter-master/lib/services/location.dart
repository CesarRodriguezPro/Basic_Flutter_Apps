import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation()async{
    try{
      print('location requested');
      Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
      print('latitude $latitude and longitude $longitude');
    }catch(e){
      print(e);
    }
  }
}