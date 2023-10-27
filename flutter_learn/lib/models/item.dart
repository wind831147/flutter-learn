import 'package:flutter/material.dart';

import 'item_base.dart';

class Profiles implements ProfileInterface {
  final String name;
  final String picUrl;
  final String username;
  final MaterialColor backgroundColor = Colors.red;
  final String subTitle;
  final bool isTrack;

  Profiles(
      {required this.name,
      required this.picUrl,
      required this.username,
      required this.subTitle,
      required this.isTrack});

  factory Profiles.fromJson(Map<String, dynamic> json) {
    return Profiles(
      name: json['name'],
      picUrl: json['picUrl'],
      username: json['username'],
      isTrack: json['isTrack'],
      subTitle: json['subTitile'],
    );
  }

  static Profiles getDefaultProfile() {
    return Profiles(
      name: '',
      subTitle: '',
      picUrl: '',
      username: '',
      isTrack: false,
    );
  }
}
