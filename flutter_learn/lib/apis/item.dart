import '../utils/enums/item_data.dart';

class ItemApi {
  static String? getItemData(ItemDataEnum type) {
    String? result;

    switch (type) {
      case ItemDataEnum.food:
        result = "123";
        break;
      case ItemDataEnum.girl:
        result = "456";
        break;
      default:
        break;
    }

    return result;
  }
}
