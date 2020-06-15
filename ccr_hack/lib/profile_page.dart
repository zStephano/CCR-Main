import 'package:flutter/material.dart';
import 'package:ccr_hack/nav_drawer.dart';

  void main() => runApp(new MyApp());

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Stack Demo',
        home: new StackDemo(),
      );
    }
  }

  class StackDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(title: Text('Meu Perfil'),),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  //color: Colors.orange,
                  child: Center(
                    //child: Text('Background image goes here'),
                  ),
                  decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/cover.jpg'))),
                ),
                Expanded(
                  child: Container(
                    //Text('Fulano da Silva'),
                    color: Colors.white,
                    child: Center(
                      child: Text('Telma Andrade \n \n       #20089',
                      style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Profile image
            Positioned(
              top: 110.0, // (background container size) - (circle height / 2)
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/cover.jpg'))), 
              ),
            )
          ],
        ),
      );
    }
  }