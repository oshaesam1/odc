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
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width / 30),
      child: ListView(
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
          SizedBox(
            height: size.height,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 5),
              itemBuilder: (context, index) {
                return HomeCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homeCards[index].screen,
                          ));
                    },
                    image: homeCards[index].image,
                    title: homeCards[index].title);
              },
              itemCount: homeCards.length,
            ),
          )
        ],
      ),
    ));
  }
}
