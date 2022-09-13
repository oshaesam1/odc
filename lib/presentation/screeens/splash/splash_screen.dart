import 'package:flutter/material.dart';
import 'package:odc/presentation/constants/app_assets.dart';
import 'package:odc/presentation/constants/constants.dart';
import 'package:odc/presentation/screeens/home/home_screen.dart';
import 'package:odc/presentation/screeens/login/login_screen.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';



//This is splash screen
class SplashScreen extends StatelessWidget
{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //img logo
          Image.asset(
            odcImagePng,
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width / 1.5,
            fit: BoxFit.cover,
          ),

          //LinearPercentIndicator
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: LinearPercentIndicator(
              animation: true,
              lineHeight: 7.0,
              animationDuration: 2000,
              percent: 1,
              barRadius: const Radius.circular(50),
              progressColor: primaryColor,
              onAnimationEnd: ()
              {
                token == ""
                    ? Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                      (Route<dynamic> route) => false,
                )
                    : Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                      (Route<dynamic> route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
