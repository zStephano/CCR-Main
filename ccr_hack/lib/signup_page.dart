import 'package:flutter/material.dart';
import 'package:ccr_hack/facebook_page.dart';
import 'package:ccr_hack/google_page.dart';
import 'package:ccr_hack/home_page.dart';
//import 'dart:async';

class SignUpPage extends StatelessWidget {
  static String tag = 'signup-page';

  @override
  Widget build(BuildContext context) {

    final avatar = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 30.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

final nome = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Nome',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

final sobrenome = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Sobrenome',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

        final confirmPassword = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirme sua senha',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final signUpButton = Padding(
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
        color: Colors.orangeAccent,
        child: Text('Entrar', style: TextStyle(color: Colors.white)),
      ),
    );


    final facebookButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new FacebookPage())
        );
        },
        padding: EdgeInsets.all(12),
        color: Colors.blueAccent[700],
        child: Text('Se cadastrar com o Facebook', style: TextStyle(color: Colors.white)),
      ),
    );

            final googleButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new GooglePage())
        );
        },
        padding: EdgeInsets.all(12),
        color: Colors.red[700],
        child: Text('Se cadastrar com o Gmail', style: TextStyle(color: Colors.white)),
      ),
    );

        final ouLabel = FlatButton(
      child: Text(
        'ou',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );


    return Scaffold(
      backgroundColor: Colors.orangeAccent[700],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            avatar,
            SizedBox(height: 10.0),
            Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 0, right: 2),
                      child: nome,),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 2, right: 0),
                      child: sobrenome,),
                ),
              ]),
            ]),
            SizedBox(height: 10.0),
            email,
            SizedBox(height: 10.0),
            password,
            SizedBox(height: 10.0),
            confirmPassword,
            SizedBox(height: 10.0),
            signUpButton,
            SizedBox(height: 5.0),
          Column(children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              Text("OU"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ]),
          ]),
            facebookButton,
            googleButton,
            
            
          ],
        ),
      ),
    );
  }
}