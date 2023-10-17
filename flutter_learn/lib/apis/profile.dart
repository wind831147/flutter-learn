import '../utils/enums/profile_data.dart';

class ProfileApi {
  static String? getItemData(ProFileDataEnum type) {
    String? result;

    switch (type) {
      case ProFileDataEnum.food:
        result = "123";
        break;
      case ProFileDataEnum.girl:
        result = "456";
        break;
      default:
        break;
    }

    return result;
  }
}
