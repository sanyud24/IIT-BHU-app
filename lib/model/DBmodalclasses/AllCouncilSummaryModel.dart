import '../built_post.dart';

class AllCouncilSummaryModel {
  static String idString = 'id';
  static String nameString = 'name';
  static String smallImageUrlString = 'smallImageUrl';
  static String largeImageUrlString = 'largeImageUrl';

  //converting noteobject to map

  static Map<String, dynamic> councilSummaryInfoToMap(
      BuiltAllCouncilsPost councilSummary) {
    Map<String, dynamic> map = {
      idString: councilSummary.id,
      nameString: councilSummary.name == null ? '' : councilSummary.name,
      smallImageUrlString: councilSummary.small_image_url == null
          ? ''
          : councilSummary.small_image_url,
      largeImageUrlString: councilSummary.large_image_url == null
          ? ''
          : councilSummary.large_image_url,
    };
    return map;
  }

  // extract object from map

  static BuiltAllCouncilsPost councilSummaryFromMap(dynamic map) {
    final council = BuiltAllCouncilsPost((b) => b
      ..id = map[idString]
      ..name = map[nameString]
      ..small_image_url = map[smallImageUrlString]
      ..large_image_url = map[largeImageUrlString]);
    return council;
  }
}
