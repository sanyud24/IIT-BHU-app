import '../built_post.dart';

class Workshopsummarymodel {
  static String idString = 'id';
  static String clubIdString = 'clubId';
  static String clubString = 'club';
  static String councilIdString = 'councilId';
  static String smallImageUrlString = 'smallImageUrl';
  static String largeImageUrlString = 'largeImageUrl';
  static String titleString = 'title';
  static String dateString = 'date';
  static String timeString = 'time';
  static String interestedString = 'interested';

  static Map<String, dynamic> workshopInfoToMap(
      BuiltWorkshopSummaryPost workshop) {
    Map<String, dynamic> map = {
      idString: workshop.id,
      clubIdString: workshop.club.id,
      clubString: workshop.club.name == null ? '' : workshop.club.name,
      councilIdString: workshop.club.council.id,
      smallImageUrlString: workshop.club.small_image_url == null
          ? ''
          : workshop.club.small_image_url,
      largeImageUrlString: workshop.club.large_image_url == null
          ? ''
          : workshop.club.large_image_url,
      titleString: workshop.title == null ? '' : workshop.title,
      dateString: workshop.date == null ? '' : workshop.date,
      timeString: workshop.time == null ? '' : workshop.time,
    };
    return map;
  }

//extracting objext to map

  static BuiltWorkshopSummaryPost workshopSummaryFromMap(
      dynamic map, BuiltAllCouncilsPost councilSummary) {
    final workshop = BuiltWorkshopSummaryPost((b) => b
      ..id = map[idString]
      ..club.id = map[clubIdString]
      ..club.name = map[clubString]
      ..club.council =
          councilSummary == null ? null : (councilSummary.toBuilder())
      ..club.small_image_url = map[smallImageUrlString]
      ..club.large_image_url = map[largeImageUrlString]
      ..title = map[titleString]
      ..date = map[dateString]
      ..time = map[timeString]);
    return workshop;
  }
}
