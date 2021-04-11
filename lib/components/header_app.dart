import 'package:clone_netflix/components/navbar.dart';
import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        this.header(),
        this.infoSerie(),
        this.buttoms(),

      ],
    );
  }
  Widget header(){
    return Stack(
      children: [
        Image.network('https://i.ytimg.com/vi/8heESV6kr1g/maxresdefault.jpg',
          height: 450.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 450.0,
          decoration: BoxDecoration(

            gradient: LinearGradient(
                begin:Alignment.center ,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.black12,
                  Colors.black
                ]
            ) ,
          ),
        ),
        SafeArea(
          child: Navbar(),
        ),
      ],
    );
  }

  Widget infoSerie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Telenovelesco',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0
          ),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color:Colors.redAccent, size: 5.0,),
        SizedBox(width: 6.0),
        Text('Suspenso ',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.0
          ),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color:Colors.redAccent, size: 5.0,),
        SizedBox(width: 6.0),
        Text('Adolecente',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.0
          ),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color:Colors.redAccent, size: 5.0,),
        SizedBox(width: 6.0),
        Text('Pura Acción',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.0
          ),),
      ],
    );
  }
  
  Widget buttoms(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(
                height: 3.0,
              ),
              Text(
                "Mi lista",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                ),
              ),
            ],
          ),
              MaterialButton(
                minWidth: 150.0,
                height: 40.0,
                onPressed: () {},
                color: Colors.white,
                child:
                  Text(
                    'Reproducir',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
              ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(
                height: 3.0,
              ),
              Text(
                "Información",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
            ],


      ),
    );
  }


}