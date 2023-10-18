import 'package:flutter_learn/utils/enums/profile_data.dart';
import '../models/item.dart';

class ProfilesApi {
  static Future<Profiles> getItemData(ProFileDataEnum type) async {
    switch (type) {
      case ProFileDataEnum.boy:
        return Profiles(
          name: 'John Doe',
          picUrl: 'https://example.com/johndoe.jpg',
          username: 'johndoe123',
          isTrack: true,
        );
      case ProFileDataEnum.girl:
        return Profiles(
          name: 'Joanana',
          picUrl: 'https://example.com/johndoe.jpg',
          username: 'johndoe123',
          isTrack: false,
        );

      default:
        return Profiles.getDefaultProfile();
    }
  }

  static Future<List<Profiles>> getListItemData(ProFileDataEnum type) async {
    List<Profiles> listProfiles = [];
    switch (type) {
      case ProFileDataEnum.boy:
        listProfiles.add(Profiles(
          name: 'Jimmy',
          picUrl: 'https://example.com/johndoe.jpg',
          username: 'Jimmy1994',
          isTrack: true,
        ));

        listProfiles.add(Profiles(
          name: 'Jerry',
          picUrl: 'https://example.com/johndoe.jpg',
          username: 'Jerry1995',
          isTrack: true,
        ));

        return listProfiles;
      case ProFileDataEnum.girl:
        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl: 'https://example.com/johndoe.jpg',
          username: 'johndoe123',
          isTrack: false,
        ));

        return listProfiles;

      default:
        listProfiles.add(Profiles.getDefaultProfile());
        return listProfiles;
    }
  }
}
