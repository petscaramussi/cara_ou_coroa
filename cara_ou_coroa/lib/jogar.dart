import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // adicionar cores com hexadecimal "Color(0xff+suaCor)"
      // adicionar cores RGBO "Color.fromRGBO(255, 204, 128, 0.8)"
      backgroundColor: Colors.green,
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("imagens/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}