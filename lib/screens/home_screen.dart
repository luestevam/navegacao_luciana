import 'package:flutter/material.dart';
import 'package:navegacao_luciana/screens/first_page.dart';
import 'package:navegacao_luciana/screens/third_page.dart';
import 'second_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            final can = Navigator.canPop(context);
            if (can) {
              Navigator.pop(context);
            }else {
              print("This Page cannot be closed");
            }
          },
        ),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Home Página",
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
            RaisedButton(
              child: Text("Ir para Primeira página"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstPage(),
                    )
                );
              },
            ),
            RaisedButton(
              child: Text("Ir para segunda página"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
            ),
            RaisedButton(
              child: Text("Ir Para Terceira Pagina"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    )
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
