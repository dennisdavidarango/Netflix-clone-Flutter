import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Image.network(
          'https://i.pinimg.com/originals/37/46/b3/3746b33e879cca0e7c80611811f44318.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 12.0,)
      ],
    );
  }
}