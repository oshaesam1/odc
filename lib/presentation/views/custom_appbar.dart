import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key,  this.title = ''}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      leading: const Icon(
        Icons.arrow_back_ios,
        color: primaryColor,
      ),
    );
  }
}
