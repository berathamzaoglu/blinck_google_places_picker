import 'package:flutter/material.dart';
import 'package:blinck_google_places_picker/google_places_picker.dart';
void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _placeName = 'Unknown';

  @override
  initState() {
    super.initState();
    PluginGooglePlacePicker.initialize(
      androidApiKey: "AIzaSyC73ibfdU1_OYcK7huCvBv3FyHbZ9osnA8",
      iosApiKey: "AIzaSyC73ibfdU1_OYcK7huCvBv3FyHbZ9osnA8",
    );
  }

  _showAutocomplete() async {
    String placeName;
    var locationBias = LocationBias()
      ..northEastLat = 20.0
      ..northEastLng = 20.0
      ..southWestLat = 0.0
      ..southWestLng = 0.0;

    var locationRestriction = LocationRestriction()
      ..northEastLat = 20.0
      ..northEastLng = 20.0
      ..southWestLng = 0.0
      ..southWestLat = 0.0;

    var country = "US";

    // Platform messages may fail, so we use a try/catch PlatformException.
    var place = await PluginGooglePlacePicker.showAutocomplete(
        mode: PlaceAutocompleteMode.MODE_OVERLAY,
        typeFilter: TypeFilter.CITIES);
    placeName = place.name ?? "Null place name!";

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _placeName = placeName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Place picker example app'),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              TextButton(
                  onPressed: _showAutocomplete,
                  child: new Text("Show autocomplete")),
              Row(
                children: <Widget>[
                  new Text("Place name: "),
                  new Text(_placeName)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
