import 'package:flutter/material.dart';

class TerceiraPage extends StatefulWidget {
  @override
  _TerceiraPageState createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {

  Future<bool> _requestPop(BuildContext context){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text ('Deseja Sair?'),
        actions:[
          GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: Text ('Não'),
          ),
          SizedBox(height: 16.0),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child: Text ('Sim'),
          ),
        ],
      ),
    ) ??
        false;
  }



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}