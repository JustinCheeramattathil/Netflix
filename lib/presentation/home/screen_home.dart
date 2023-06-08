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

}
