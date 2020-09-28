import 'package:dividend_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import '../services/networkHelper.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  NetworkHelper network;




  @override
  void initState() {
    getDividendData();
    super.initState();
  }

  void getDividendData() async{
    network = NetworkHelper(url);
    var data = await network.getData();
    print(data);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingFlipping.square(),
    );
  }
}

