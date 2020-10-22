import '../built_post.dart';

class ClubSummaryModel {
  static String idString = 'id';
  static String nameString = 'name';
  static String smallImageUrlString = 'smallImageUrl';
  static String largeImageUrlString = 'largeImageUrl';
  static String councilIdString = 'councilId';

  static Map<String, dynamic> clubSummaryInfoToMap(ClubListPost clubSummary) {
    Map<String, dynamic> map = {
      idString: clubSummary.id,
      nameString: clubSummary.name == null ? '' : clubSummary.name,
      councilIdString:
          (clubSummary.council == null || clubSummary.council.id == null)
              ? 0
              : clubSummary.council.id,
      smallImageUrlString: clubSummary.small_image_url == null
          ? ''
          : clubSummary.small_image_url,
      largeImageUrlString: clubSummary.large_image_url == null
          ? ''
          : clubSummary.large_image_url,
    };
    return map;
  }

  static ClubListPost clubSummaryFromMap(
      dynamic map, BuiltAllCouncilsPost councilSummary) {
    final clubSummary = ClubListPost((b) => b
      ..id = map[idString]
      ..name = map[nameString]
      ..council = councilSummary == null ? null : (councilSummary.toBuilder())
      ..small_image_url = map[smallImageUrlString]
      ..large_image_url = map[largeImageUrlString]);
    return clubSummary;
  }
}
