import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import 'package:netflix/presentation/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/number_title_card.dart';

import '../widgets/main_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kMainimage))),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  top: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kwhitecolor),
                          ),
                        icon: Icon(
                          Icons.play_arrow,
                          ),
                        label: Text('Play'),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
            MainTitleCard(
              title: "Released in the past year",
            ),
            kheight,
            MainTitleCard(
              title: "Trending Now",
            ),
            kheight,
            NumberTitleCard(),
            kheight,
            MainTitleCard(
              title: "Tense Dramas",
            ),
            kheight,
            MainTitleCard(
              title: "South Indian Cinema",
            ),
          ],
        ),
      ),
    );
  }
}
