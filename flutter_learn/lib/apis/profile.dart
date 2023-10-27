import 'package:flutter_learn/utils/enums/profile_data.dart';
import '../models/item.dart';

class ProfilesApi {
  static Future<Profiles> getItemData(ProFileDataEnum type) async {
    switch (type) {
      case ProFileDataEnum.boy:
        return Profiles(
          name: 'John Doe',
          picUrl:
              'https://www.shutterstock.com/image-photo/banana-cluster-isolated-260nw-575528746.jpg',
          username: 'johndoe123',
          subTitle: '香蕉',
          isTrack: true,
        );
      case ProFileDataEnum.girl:
        return Profiles(
          name: 'Joanana',
          picUrl:
              'https://www.shutterstock.com/image-photo/ripe-grapes-growing-vineyard-260nw-2219518639.jpg',
          username: 'johndoe123',
          subTitle: '葡萄',
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
          picUrl:
              'https://www.shutterstock.com/image-photo/tangerines-clementines-green-leaf-on-260nw-1688131162.jpg',
          username: 'Jimmy1994',
          subTitle: '橘子',
          isTrack: true,
        ));

        listProfiles.add(Profiles(
          name: 'Jerry',
          picUrl:
              'https://www.shutterstock.com/image-photo/mango-fruit-cubes-leaves-isolated-260nw-1933293608.jpg',
          username: 'Jerry1995',
          subTitle: '芒果',
          isTrack: true,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://d1hjkbq40fs2x4.cloudfront.net/2020-09-30/files/Travel-02-resized.jpg',
          username: 'johndoe123',
          subTitle: '雪國',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://www.shutterstock.com/image-photo/juicy-watermelon-sliced-isolated-on-260nw-1651445977.jpg',
          username: 'johndoe123',
          subTitle: '西瓜',
          isTrack: false,
        ));

        return listProfiles;
      case ProFileDataEnum.girl:
        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://www.shutterstock.com/image-photo/tangerine-orange-fruit-green-leaf-260nw-2242063149.jpg',
          username: 'johndoe123',
          subTitle: '柳丁',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://www.shutterstock.com/image-photo/juicy-watermelon-sliced-isolated-on-260nw-1651445977.jpg',
          username: 'johndoe123',
          subTitle: '西瓜',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://www.shutterstock.com/image-photo/whole-half-ripe-papaya-fruit-260nw-737284537.jpg',
          username: 'johndoe123',
          subTitle: '木瓜',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://www.shutterstock.com/image-photo/red-lychee-fruit-isolated-on-260nw-2308775207.jpg',
          username: 'johndoe123',
          subTitle: '荔枝',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://d1hjkbq40fs2x4.cloudfront.net/2020-09-30/files/Astro-02-resized.jpg',
          username: 'johndoe123',
          subTitle: '風景',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://d1hjkbq40fs2x4.cloudfront.net/2020-09-30/files/Architecture-02-resized.jpg',
          username: 'johndoe123',
          subTitle: '風景2',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://d1hjkbq40fs2x4.cloudfront.net/2020-09-30/files/Lowlight-01-resized.jpg',
          username: 'johndoe123',
          subTitle: '天燈',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://d1hjkbq40fs2x4.cloudfront.net/2020-09-30/files/Landscape-03-resized.jpg',
          username: 'johndoe123',
          subTitle: '公路風景',
          isTrack: false,
        ));

        listProfiles.add(Profiles(
          name: 'Joanana',
          picUrl:
              'https://d1hjkbq40fs2x4.cloudfront.net/2020-09-30/files/Travel-02-resized.jpg',
          username: 'johndoe123',
          subTitle: '雪國',
          isTrack: false,
        ));

        return listProfiles;

      default:
        listProfiles.add(Profiles.getDefaultProfile());
        return listProfiles;
    }
  }
}
