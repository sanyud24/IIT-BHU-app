import '../built_post.dart';

class ClubDetailModel {
  static String idString = 'id';
  static String councilIdString = 'councilId';
  static String smallImageUrlString = 'smallImageUrl';
  static String largeImageUrlString = 'largeImageUrl';
  static String nameString = 'name';
  static String descriptionString = 'description';
  static String isPORHolderString = 'isPORHolder';
  static String websiteUrlString = 'websiteUrl';
  static String facebookUrlString = 'facebookUrl';
  static String twitterUrlString = 'twitterUrl';
  static String instagramUrlString = 'instagramUrl';
  static String linkedinUrlString = 'linkedinUrl';
  static String youtubeUrlString = 'youtubeUrl';
  static String secyIdString = 'secyId';
  static String councilNameString = 'councilName';
  static String councilSmallImageUrlString = 'councilSmallImageUrl';
  static String councilLargeImageUrlString = 'councilLargeImageUrl';
  static String jointSecyId1String = 'jointSecyId1';
  static String jointSecyId2String = 'jointSecyId2';
  static String isSubscribedString = 'isSubscribed';
  static String subscribedUsersString = 'subscribedUsers';

  static Map<String, dynamic> clubDetailToMap(BuiltClubPost clubPost) {
    Map<String, dynamic> map = {
      idString: clubPost.id,
      nameString: clubPost.name == null ? '' : clubPost.name,
      descriptionString:
          clubPost.description == null ? '' : clubPost.description,
      councilIdString: clubPost.council.id,
      councilNameString: clubPost.council.name,
      councilSmallImageUrlString: clubPost.council.small_image_url,
      councilLargeImageUrlString: clubPost.council.large_image_url,
      secyIdString: clubPost.secy == null ? -1 : clubPost.secy.id,
      jointSecyId1String:
          (clubPost.joint_secy.isEmpty) ? -1 : clubPost.joint_secy[0].id,
      jointSecyId2String:
          (clubPost.joint_secy.length < 2) ? -1 : clubPost.joint_secy[1].id,
      smallImageUrlString:
          clubPost.small_image_url == null ? '' : clubPost.small_image_url,
      largeImageUrlString:
          clubPost.large_image_url == null ? '' : clubPost.large_image_url,
      isSubscribedString: clubPost.is_subscribed == true ? 1 : 0,
      subscribedUsersString: clubPost.subscribed_users,
      isPORHolderString: clubPost.is_por_holder == null
          ? 0
          : (clubPost.is_por_holder == true ? 1 : 0),
      websiteUrlString:
          clubPost.website_url == null ? '' : clubPost.website_url,
      facebookUrlString:
          clubPost.facebook_url == null ? '' : clubPost.facebook_url,
      twitterUrlString:
          clubPost.twitter_url == null ? '' : clubPost.twitter_url,
      instagramUrlString:
          clubPost.instagram_url == null ? '' : clubPost.instagram_url,
      linkedinUrlString:
          clubPost.linkedin_url == null ? '' : clubPost.linkedin_url,
      youtubeUrlString:
          clubPost.youtube_url == null ? '' : clubPost.youtube_url,
    };
    return map;
  }
}
