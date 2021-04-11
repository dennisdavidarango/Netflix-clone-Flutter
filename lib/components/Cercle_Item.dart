import 'package:flutter/material.dart';

class CercleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter ,

          children: [
            Container(
              height:110.0 ,
              width:110.0 ,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.amber,
                  width: 2.0,
                )
              ),
              child: ClipOval(
                  child: Image.network(
                    'https://i.pinimg.com/564x/5f/4e/61/5f4e61600201742ddbfaaab54af667fd.jpg',
                  fit: BoxFit.cover,
                  )
              ),
            ),
            Image.network(
                'https://occ-0-92-1723.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABRQ9dqnbSYQX1BpdwREovCCK-_5_sY2LdF4kZnLlv8jvjVc7zEJsLUvO6U5xcMtBnpO11fhg9HZm9zrmmQhtH7uR0Tio8GiPLjanzwSNsMPSwhq1hEpxbq2QbvVJKClrWRKVUkbHxDwXTubhJukACIkIQawTK7Q-_xkGGFstAow76g.png?r=50f',
                width: 100.0,

            )
          ],
        ),
        SizedBox(width: 12.0,),
      ],
    );
  }
}