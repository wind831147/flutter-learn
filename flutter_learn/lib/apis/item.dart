import '../utils/enums/item_data.dart';
import '../models/item.dart';

class ItemApi {
  static Future<Profiles> getItemData(ItemDataEnum type) async {
    switch (type) {
      case ItemDataEnum.food:
        return Profiles(
          name: 'John Doe',
          subTitle: '柳丁',
          picUrl:
              'https://img.pchome.com.tw/cs/items/DEACFDA900BLUZ3/000007_1627365747.jpg?width=320',
          username: 'johndoe123',
          isTrack: true,
        );
      case ItemDataEnum.girl:
        return Profiles(
          name: 'Joanana',
          subTitle: '鞠子',
          picUrl:
              'https://img.pchome.com.tw/cs/items/DEACFDA900BLUZ3/000007_1627365747.jpg?width=320',
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
          subTitle: '蘋果',
          picUrl:
              'https://img.pchome.com.tw/cs/items/DEACFDA900BLUZ3/000007_1627365747.jpg?width=320',
          username: 'Jimmy1994',
          isTrack: true,
        ));

        listProfiles.add(Profiles(
          name: 'Jerry',
          subTitle: '蓮霧',
          picUrl:
              'https://img.pchome.com.tw/cs/items/DEACFDA900BLUZ3/000007_1627365747.jpg?width=320',
          username: 'Jerry1995',
          isTrack: true,
        ));

        return listProfiles;
      case ItemDataEnum.girl:
        listProfiles.add(Profiles(
          name: 'Joanana',
          subTitle: '甘蔗',
          picUrl:
              'https://img.pchome.com.tw/cs/items/DEACFDA900BLUZ3/000007_1627365747.jpg?width=320',
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
