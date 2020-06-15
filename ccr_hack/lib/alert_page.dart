import 'package:flutter/material.dart';
import 'package:ccr_hack/home_page.dart';
//import 'dart:async';

class AlertPage extends StatelessWidget {
  static String tag = 'alert-page';

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/google_logo.png'),
      ),
    );


    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new HomePage())
        );
        },
        padding: EdgeInsets.all(12),
        color: Colors.white,
        child: Text('Cancelar', style: TextStyle(color: Colors.red[700])),
      ),
    );

    final ambulanciaButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new HomePage())
        );
        },
        padding: EdgeInsets.all(12),
        color: Colors.white,
        child: Text(' Ligar para 192 (Ambulância)', style: TextStyle(color: Colors.red[700])),
      ),
    );

    final empresaButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new HomePage())
        );
        },
        padding: EdgeInsets.all(12),
        color: Colors.white,
        child: Text(' Ligar para a empresa', style: TextStyle(color: Colors.red[700])),
      ),
    );

    final pessoalButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new HomePage())
        );
        },
        padding: EdgeInsets.all(12),
        color: Colors.white,
        child: Text(' Ligar para contato pessoal (Filho)', style: TextStyle(color: Colors.red[700])),
      ),
    );


        final m1Label = FlatButton(
      child: Text(
        'Selecione uma das opções abaixo para realizar uma ligação de emergencia',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );

  final m2Label = FlatButton(
      child: Text(
        'A Emergencia será acionada em 10 segundos caso nehuma ação sejá tomada',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );


    return Scaffold(
      backgroundColor: Colors.red[400],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            //logo,
            m1Label,
            ambulanciaButton,
            pessoalButton,
            empresaButton,
            SizedBox(height: 24.0),
            m2Label,
            loginButton,
          ],
        ),
      ),
    );
  }
}