import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home_MS(),
    )
  );
}

class Home_MS extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff0C1316),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child:Container(
              child: Align(
                alignment: Alignment.topRight,
                child:Image(
                  image: AssetImage('img/logo_dark.png'),
                  width: 79,
                  height: 78,
                )
              )
            )
          ),
          Center(child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xfffafafb),
            ),
          height: 382,
          width: 362,
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: Text("Marcos A.", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: "Lexend"))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('Técnico de Informática', style: TextStyle(fontSize: 16, fontFamily: "Lexend"))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text("1.2 km", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontFamily: "Lexend"))
                  ),
                ]
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    child: Image(
                    image: AssetImage('img/usr_logo.PNG'),
                    height: 166,
                    width: 146,
                    alignment: Alignment.topRight,
                    )
                  ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(162, 31),
                      backgroundColor: Color(0xff0C1316),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Text("CONTRATAR", style: TextStyle(fontSize: 18, color: Color(0xffC1FE71), fontFamily: "Lexend")),
                    onPressed: () => Text("Fui pressionado"),
                  ),
                )
              ]),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                padraoDescricaoCard("Tags:", 15),
                padraoDescricaoCard("TI | Informática | Suporte |", 0),
                padraoDescricaoCard('"Ao longo da minha carreira eu desenvolvi técnicas de abordagem ao cliente que levaram a um aumento significativo das vendas."', 10)
              ]
            )
        ])
       )),
       Center(
         child: Container(
          width: 364,
          height: 42,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              botaoDark("Anterior"),
              botaoDark("Próximo")
            ]),
         ),
       ),
       Expanded(
          child: Container(
            child: Center( 
              child: Image(
                image: AssetImage('img/nome_dark.png'), 
                width: 259, 
                height: 61)
            )
          )
       )
      ])
    );
  }  
}

Widget padraoDescricaoCard(String texto, double topo){
  return Padding(
    padding: EdgeInsets.fromLTRB(10, topo, 10, 10),
    child: Text(texto, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Lexend"), textAlign: TextAlign.justify,), 
  );
}

Widget botaoDark(String conteudo){
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size(164, 40),
        backgroundColor: Color(0xff0C1316),
        side: BorderSide(color: Color(0xffC1FE71)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    onPressed: () => Text(conteudo),
    child: Text(conteudo, style: TextStyle(color: Color(0xfffafafb), fontSize: 20, fontFamily: 'Lexend'))
    )
  );
}