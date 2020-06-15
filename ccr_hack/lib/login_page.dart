//based on https://github.com/putraxor/flutter-login-ui
import 'package:flutter/material.dart';
import 'package:ccr_hack/home_page.dart';
import 'package:ccr_hack/signup_page.dart';
import 'package:ccr_hack/facebook_page.dart';
import 'package:ccr_hack/google_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/logo.png'),
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

    final loginButton = Padding(
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
        child: Text('Entrar com Facebook', style: TextStyle(color: Colors.white)),
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
        child: Text('Entrar com Gmail', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

        final signupLabel = FlatButton(
      child: Text(
        'Não tem cadastro? Clique aqui',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        //Navigator.of(context).pushNamed(HomePage.tag);
        //Navigator.of(context).pushNamed(SignUpPage.tag);
        Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>
            new SignUpPage())
        );
      },
    );

    return Scaffold(
      backgroundColor: Colors.orangeAccent[700],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            signupLabel,
            loginButton,
            //forgotLabel,
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
            googleButton
            
          ],
        ),
      ),
    );
  }
}
