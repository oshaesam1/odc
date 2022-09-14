import 'package:flutter/material.dart';
import 'package:odc/data/local/cache_helper.dart';
import 'package:odc/presentation/screeens/splash/splash_screen.dart';
import 'package:odc/presentation/styles/colors.dart';

void main() async{
  await  CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'ODC',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor))
        ),
        outlinedButtonTheme:OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: primaryColor,
            side: const BorderSide(color: primaryColor),
          )
        ),
        backgroundColor: Colors.teal,
        primarySwatch: Colors.blue,
      ),

      home: const SplashScreen(),

    );
  }
}
