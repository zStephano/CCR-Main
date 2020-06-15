import 'package:flutter/material.dart';
import 'package:ccr_hack/map.page.dart';
//import 'package:ccr_hack/nav_drawer.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caminhonzin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.orange,
       visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MapPage(),
    );
  }
}
