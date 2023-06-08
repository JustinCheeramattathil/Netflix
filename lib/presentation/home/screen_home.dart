import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';
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
      body: ListView(
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
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButtonWidget(
                      title: "My List",
                      icon: Icons.add,
                    ),
                    _PlayButton(),
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
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kwhitecolor),
      ),
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: kblackcolor,
      ),
      label: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(fontSize: 18, color: kblackcolor),
        ),
      ),
    );
  }
}


