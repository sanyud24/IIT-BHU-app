import '../built_post.dart';

class PorholderModel {
  static String idString = 'id';
  static String clubIdString = 'clubId';
  static String councilIdString = 'councilId';
  static String nameString = 'name';
  static String emailString = 'email';
  static String phoneNumberString = 'phoneNumber';
  static String photoUrlString = 'photoUrl';

  static Map<String, dynamic> porInfoToMap(
      {SecyPost por, int councilId = -1, int clubId = -1}) {
    Map<String, dynamic> map = {
      idString: por.id,
      councilIdString: councilId,
      clubIdString: clubId,
      nameString: por.name == null ? '' : por.name,
      emailString: por.email == null ? '' : por.email,
      phoneNumberString: por.phone_number == null ? '' : por.phone_number,
      photoUrlString: por.photo_url == null ? '' : por.photo_url,
    };
    return map;
  }

  static SecyPost porHolderInfoFromMap(dynamic map) {
    final porHolder = SecyPost((b) => b
      ..id = map[idString]
      ..name = map[nameString]
      ..email = map[emailString]
      ..phone_number = map[phoneNumberString]
      ..photo_url = map[photoUrlString]);
    return porHolder;
  }
}
