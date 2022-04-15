import 'package:flutter/material.dart';
import 'Activity/loading.dart';
import 'Activity/home.dart';
import 'Activity/location.dart';
void main() {
  runApp(MaterialApp(
    routes: {
      "/" :(context) => Loading(),
      "/home" :(context) => Home(),

    },
  ));
}
