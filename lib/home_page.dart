import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Contador de clicks",
            style: TextStyle(fontSize: 25),
          ),
        ),
        //BOTÃO FLUTUANTE PARA INCREMENTAR
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          //QUANDO FOR PRESSIONADO ELE IRÁ EXECUTAR ESSA AÇÃO
          onPressed: () {
            //ELE ALTERA O ESTADO DA APLICAÇÃO
            setState(() {
              contador++;
            });
          },
        ),
        body: Center(
          //ELE DETECTA QUANDO O FILHO DELE É CLICADO
          child: Text(
            "Contador: $contador",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
