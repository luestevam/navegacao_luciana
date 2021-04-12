import 'package:flutter/material.dart';
import 'package:navegacao_luciana/screens/third_page.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Página"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text("Segunda Página",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey),
            ),


          RaisedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            RaisedButton(
              child: Text("Ir para terceira página"),
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