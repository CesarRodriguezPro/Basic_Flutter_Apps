import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:bitcoin_ticker/utilities/coin_data.dart';
import 'package:bitcoin_ticker/services/networking.dart';


class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {


  String selectCurrency = 'USD';
  String updateBtc= 'Please Wait';
  String updateEtc= 'Please Wait';
  String updateLtc= 'Please Wait';
  var _btc;
  var _etc;
  var _ltc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiInfo();
  }

  Future<Map<String,dynamic>> getApiInfo() async{
    final apiKey = 'BABAF6C6-FBE8-4940-99EF-732F7FBE9939';
    _btc =  await NetworkHelper('https://rest.coinapi.io/v1/exchangerate/BTC/?apikey=$apiKey').getData();
    _etc =  await NetworkHelper('https://rest.coinapi.io/v1/exchangerate/ETC/?apikey=$apiKey').getData();
    _ltc =  await NetworkHelper('https://rest.coinapi.io/v1/exchangerate/LTC/?apikey=$apiKey').getData();
    runAllUpdater();
  }

  DropdownButton<String> androidDropdownButton(){
    List<DropdownMenuItem<String>> dropDownItems = [];
    for(String currency in currenciesList){
      var newItem = DropdownMenuItem(value: currency, child: Text(currency),);
      dropDownItems.add(newItem);
    }
    return DropdownButton<String>(value: selectCurrency, items: dropDownItems,
      onChanged: (value){
        setState(() {
          selectCurrency = value;
        },);
        runAllUpdater();
      },);
  }

  CupertinoPicker IOSPicker(){
    List<Text> listOfItems = [];
    for(String currency in currenciesList){
      var newItem = Text(currency);
      listOfItems.add(newItem);
    }

    return CupertinoPicker(itemExtent: 32, onSelectedItemChanged: (selectedIndex){
      setState(() {
        selectCurrency = currenciesList[selectedIndex];
      });
      runAllUpdater();
    }, children:listOfItems);
  }

  void runAllUpdater(){
    updaterForBtc();
    updaterForEtc();
    updaterForLtc();
  }
  void updaterForBtc(){
    for(Map item in _btc['rates']){
      if(item['asset_id_quote'] == selectCurrency){
        setState(() {
          updateBtc = '1 ${_btc['asset_id_base']} = ${item['asset_id_quote']} ${item['rate'].toStringAsFixed(2)}';
        });
      }}
  }
  void updaterForEtc(){
    for(Map item in _etc['rates']){
      if(item['asset_id_quote'] == selectCurrency){
        setState(() {
          updateEtc = '1 ${_etc['asset_id_base']} = ${item['asset_id_quote']} ${item['rate'].toStringAsFixed(2)}';
        });
      }}
  }
  void updaterForLtc(){
    for(Map item in _ltc['rates']){
      if(item['asset_id_quote'] == selectCurrency){
        setState(() {
          updateLtc = '1 ${_ltc['asset_id_base']} = ${item['asset_id_quote']} ${item['rate'].toStringAsFixed(2)}';
        });
    }}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Column(
              children: [
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(updateBtc, textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(updateEtc, textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(updateLtc, textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child:Platform.isIOS ? IOSPicker():androidDropdownButton()
          ),
        ],
      ),
    );
  }
}
