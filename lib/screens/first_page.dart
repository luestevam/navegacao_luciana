import 'package:flutter/material.dart';
import 'package:navegacao_luciana/screens/home_screen.dart';
import 'package:navegacao_luciana/screens/second_page.dart';

class FirstPage extends StatelessWidget {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeria Página"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Primeira página",
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("Voltar"),
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("Seguir"),
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(),
                          ));
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
