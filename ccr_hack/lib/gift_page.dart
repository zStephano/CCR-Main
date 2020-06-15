import 'package:flutter/material.dart';
import 'package:ccr_hack/nav_drawer.dart';

class ListPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Trocar Pontos";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
       primarySwatch: Colors.orange,
       visualDensity: VisualDensity.adaptivePlatformDensity,),
      home: Scaffold(drawer: NavDrawer(),appBar: AppBar(
        title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(opcoes.length, (index) {
              return Center(
                child: OpcaoCard(opcao: opcoes[index]),
              );
           }
          )
        )
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
  const Opcao(titulo: 'Padaria', icon: Icons.local_pizza),
  const Opcao(titulo: 'Restaurantes', icon: Icons.fastfood),
  const Opcao(titulo: 'Mercados', icon: Icons.shopping_basket),
  const Opcao(titulo: 'Lazer', icon: Icons.local_play),
  const Opcao(titulo: 'Hospedagem', icon: Icons.hotel),
  const Opcao(titulo: 'Lavagem de caminhão', icon: Icons.directions_boat),
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
                Text(opcao.titulo, style: TextStyle(fontSize: 28)),
          ]
        ),
      )
    );
  }
}