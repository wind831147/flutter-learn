import '../utils/enums/item_data.dart';
import '../models/item.dart';

class ItemApi {
  static Future<Profiles> getItemData(ItemDataEnum type) async {
    switch (type) {
      case ItemDataEnum.food:
        return Profiles(
          name: 'John Doe',
          picUrl: 'https://example.com/johndoe.jpg',
          username: 'johndoe123',
          isTrack: true,
        );
      case ItemDataEnum.girl:
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

  static Future<List<Profiles>> getListItemData(ItemDataEnum type) async {
    List<Profiles> listProfiles = [];
    switch (type) {
      case ItemDataEnum.food:
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
      case ItemDataEnum.girl:
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
