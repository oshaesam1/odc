import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc/presentation/styles/colors.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key? key,
    // required this.image,
     required this.title,
    // required this.onTap,
  }) : super(key: key);

   final String title;
  // final Function() onTap;
  // final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: onTap,
      child: Card(
        elevation: 20,
        child: Stack(
          children: [
            Positioned(top: 10,right: 20,
                child:
                Row(
                  children: [
                    Icon(Icons.edit,color: primaryColor,),
                    Icon(Icons.delete,color: primaryColor,)
                  ],
                )),
            Column
              (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black,
                      fontSize: 20,fontWeight: FontWeight.bold),
                ),
                Text(
                  '10:14',
                  style: TextStyle(color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  '12/09/2022',
                  style: TextStyle(color: Colors.black,
                      fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
