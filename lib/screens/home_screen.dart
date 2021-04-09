import 'package:flutter/material.dart';
import 'package:navegacao_luciana/screens/otherscreen.dart';
import 'package:navegacao_luciana/screens/terceira_page.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Primeira Página",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey
              ),
            ),

            RaisedButton(
              child: Text("Ir para segunda página"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    )
                );
              },
            ),
            RaisedButton(
              child: Text("TerceiraPage"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtherPage(),
                    )
                );
              },
            )
          ],
        ),

      ),
    );
  }


}