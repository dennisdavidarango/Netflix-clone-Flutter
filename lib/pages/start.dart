import 'package:clone_netflix/components/Cercle_Item.dart';
import 'package:clone_netflix/components/header_app.dart';
import 'package:clone_netflix/components/image_item.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            HeaderApp(),
            this.HorizontalList('Avances', CercleItem(), 9),
            SizedBox(height: 10.0,),
            this.HorizontalList('Programas sobre viajes',ImageItem(), 10),
            SizedBox(height: 10.0,),
            this.HorizontalList('Tendencias',ImageItem(), 10),
            SizedBox(height: 10.0,),
            this.HorizontalList('Mi lista',ImageItem(), 10),
            SizedBox(height: 20.0,),

          ],
        ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Proximamente',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_downward),
            label: 'Descargas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Más',
          ),
        ]
    );
  }

  Widget HorizontalList(String titulo, Widget item, int cantidad){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
           itemCount: cantidad,
           itemBuilder: (context, index){
              return item;
           },
          ),
        ),
      ],
    );
  }
}