import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/background_card.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import 'package:netflix/presentation/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/number_title_card.dart';

import '../widgets/main_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          print(direction);
          if (direction == ScrollDirection.reverse) {
            scrollNotifier.value = false;
          } else if (direction == ScrollDirection.forward) {
            scrollNotifier.value = true;
          }
          return true;
        },
        child: ListView(
          children: const [
            BackgroundCard(),
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
