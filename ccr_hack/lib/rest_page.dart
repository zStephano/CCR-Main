import 'package:flutter/material.dart';
import 'package:ccr_hack/home_page.dart';
import 'package:ccr_hack/alert_page.dart';
import 'package:ccr_hack/nav_drawer.dart';

  class RestPage extends StatelessWidget {
  static String tag = 'rest-page';
  @override
  Widget build(BuildContext context) {
    final title = "Restaurentes Proximos";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
       primarySwatch: Colors.orange,
       visualDensity: VisualDensity.adaptivePlatformDensity,),
      home: Scaffold(drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(opcoes.length, (index) {
              return Center(
                child: OpcaoCard(opcao: opcoes[index]),
              );
           }
          )
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
            new AlertPage())
        ); 
        },
        child: Icon(Icons.info),
      ),
      )
    );
  }
}
class Opcao {
  const Opcao({this.titulo, this.icon});
  final String titulo;
  final IconData icon;
}
const List<Opcao> opcoes = const <Opcao>[
  const Opcao(titulo: 'Café do Zé', icon: Icons.crop_square),
  const Opcao(titulo: 'Cantina da Nena', icon: Icons.crop_square),
  const Opcao(titulo: 'Restaurante Felix', icon: Icons.crop_square),
];
class OpcaoCard extends StatelessWidget {
  const OpcaoCard({Key key, this.opcao}) : super(key: key);
  final Opcao opcao;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context)
.textTheme.display1;
        return Card(
          color: Colors.white,
          child: Center(
             child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                Icon(opcao.icon, size:40.0, color: textStyle.color),
                Text(opcao.titulo, style: textStyle),
          ]
        ),
      )
    );
  }
}