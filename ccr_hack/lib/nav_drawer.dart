import 'package:flutter/material.dart';
import 'package:ccr_hack/login_page.dart';
import 'package:ccr_hack/map.page.dart';
import 'package:ccr_hack/rest_page.dart';
import 'package:ccr_hack/profile_page.dart';
import 'package:ccr_hack/gift_page.dart';
import 'package:ccr_hack/dev_page.dart';

//import 'package:ccr_hack/calendar_page.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Telma Andrade',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Trafego/Rotas'),
            onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new MapPage() )
        );
        }
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Agenda'),
                        onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new DevPage() )
        );
        }
          ),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Restaurante e Cafeterias'),
            onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new RestPage() )
        );
        }
          ),
          ListTile(
            leading: Icon(Icons.phonelink_ring),
            title: Text('Radio Caminhoneiro'),
                        onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new DevPage() )
        );
        }
          ),
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text('Alerta Meteorológico'),
            onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new DevPage() )
        );
        }
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Cupons de Desconto'),
             onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new ListPoints() )
        );}
          ),
          ListTile(
            //leading: Icon(Icons.card_giftcard),
            title: Divider(
                      color: Colors.black,
                      height: 10,
                    ),
          ),
                    ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new StackDemo() )
        );
        }
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new LoginPage())
        );
        }
          ),
        ],
      ),
    );
  }
}
