import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:netflix/domain/core/api_end_point.dart';
import 'package:netflix/domain/home/models/home_main_model.dart';


ValueNotifier<List<ScrollImageHome>> trendingNow = ValueNotifier([]);
getHomeTrendingNow() async {
  try {
    Response response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);
    if (response.statusCode == 200 || response.statusCode == 201) {
      log("200 from release in past");
      var json = response.data;
      log(json["results"].length.toString());

      for (var index = 0; index < json["results"].length; index++) {
        trendingNow.value.add(ScrollImageHome.fromJson(json, index));
        trendingNow.notifyListeners();
      }
    }
  } catch (e) {
    log("exception from release in past");
    log(e.toString());
  }
}
