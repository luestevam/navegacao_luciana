import 'package:flutter/material.dart';
import 'package:navegacao_luciana/screens/second_page.dart';

import 'first_page.dart';
import 'home_screen.dart';



class ThirdPage extends StatefulWidget {

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  Future<bool> _requestPop(BuildContext context) async {
    bool exit = false;

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Voltar para home?'),

        actions: [
          ElevatedButton(
            child: Text('Sim'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          ),
          ElevatedButton(
            child: Text('Não'),
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
    );

    return exit;
  }

  @override
  Widget build(BuildContext context) {
      return WillPopScope(
      onWillPop: () async {
        return await _requestPop(context);
      },
      child: Scaffold(
          appBar: AppBar(
        title: Text("Terceira Página"),
      ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Terceira Página",
                style: TextStyle(fontSize: 22, color: Colors.blueGrey),
              ),



              RaisedButton(
                child: Text("Ir para primeira página"),
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


            ],
          ),
        ),

      ),
    );
  }
}
