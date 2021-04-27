# cara_ou_coroa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Trocando de tela e passando dados 💬

Como alterar entre diferentes telas em aplicativos em Flutter, pode ser usado o "Navigator.push"

```
Navigator.push(
context,
MaterialPageRoute(builder: (context)=> Tela() ));
```

O "Navigator.pop" retorna para a tela anterior

```
Navigator.pop(context);
```

### Passar dados entre telas ➡📳💬

Crie na segunda tela (a tela que você deseja enviar os dados) um construtor preparado para receber os dados que serão enviados. Esse construtor é criado na "primeira parte" do StateLessWidget. essa variavel porderá ser acessada na segunda parte também.
```
class SecondScreen extends StatelessWidget {
  final String text;
  SecondScreen({Key key, @required this.text}) : super(key: key);

  ...
```

Em seguida use o Navigator na primeira tela para criar uma rota para enviar esses dados para a segunda tela, você coloca os dados que deseja receber como parâmetro na segunda tela.
```
Navigator.Push(
    context,
    MaterialPageRoute(
      builder: (context) => SecondScreen(text: 'Hello',),
    ));
```

### Retornando dado para a tela anterior 📴🔚🔙

Na primeira tela, use o Navigator para iniciar a segunda tela em um método async e aguarde o resultado que ele retornara quando terminar
```
final result = await Navigator.Push(
    context,
    MaterialPageRoute(
      builder: (context) => SecondScreen(),
    ));
```
Na segunda tela, inclua os dados que você deseja transmitir como parâmetro ao exibir o Navigator 
```
Navigator.pop(context, 'Hello');
```
Então, na primeira tela, o await terminará e poderá ser utilizado o resultado.
```
setState(() {
  text = result;
});
```

### Gerar numeros randomincos no Dart 🔢🔟🌀

importe a biblioteca de recursos matematicos, depois é só chamar o método Ramdom().
```
import 'dart:math';
var rng = new Random();
```

### Prints 📸📽
<p align="center">
  <img src="https://github.com/petscaramussi/cara_ou_coroa/blob/main/imagens/home.jpg" width="25%" hight="25%">
  <img src="https://github.com/petscaramussi/cara_ou_coroa/blob/main/imagens/jogo.jpg" width="25%" height="25%">
</p>


