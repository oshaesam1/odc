import 'package:flutter/material.dart';
import 'package:odc/models/home_card_model.dart';
import 'package:odc/presentation/constants/app_assets.dart';
import 'package:odc/presentation/screeens/events/events_screen.dart';
import 'package:odc/presentation/screeens/final/final_sxcreen.dart';
import 'package:odc/presentation/screeens/lectures/lectures_screen.dart';
import 'package:odc/presentation/screeens/midterm/midterm_screen.dart';
import 'package:odc/presentation/screeens/notes/notes_screen.dart';
import 'package:odc/presentation/screeens/sections/sections_screen.dart';
import 'package:odc/presentation/views/home_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<HomeCardModel> homeCards = [
    HomeCardModel(
        title: 'Lectures', image: lecturesIconSVG, screen: LecturesScreen()),
    HomeCardModel(
        title: 'Section', image: sectionsIconSVG, screen: SectionsScreen()),
    HomeCardModel(
        title: 'Midterm', image: midtermIconSVG, screen: MidtermScreen()),
    HomeCardModel(title: 'Final', image: finalIconSVG, screen: FinalScreen()),
    HomeCardModel(title: 'Events', image: eventIconSVG, screen: EventsScreen()),
    HomeCardModel(title: 'Notes', image: notesIconSVG, screen: NotesScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: size.height / 30),
          child: Image.asset(
            odcImagePng,
            height: size.height / 11,
            width: size.width / 1.5,
            fit: BoxFit.cover,
          ),
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 5, childAspectRatio: 3 / 2),
          itemBuilder: (context, index) {
            return HomeCard(
                image: homeCards[index].image, title: homeCards[index].title);
          },
        )
      ],
    ));
  }
}
