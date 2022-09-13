import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc/presentation/styles/colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: SvgPicture.asset(image, semanticsLabel: 'Acme Logo'),
            ),
            Text(
              title,
              style: TextStyle(color: primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
