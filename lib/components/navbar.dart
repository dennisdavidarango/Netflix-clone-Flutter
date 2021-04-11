import 'package:flutter/material.dart';

class Navbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/img/Netflix_icon.png', width: 30.0,),
        Text('Programas',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.0 ,
          ),
        ),
        Text('Peliculas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0 ,
          ),
        ),
        Text('My Lista',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0 ,
          ),
        ),
      ],
    );
  }
}