import '../built_post.dart';

class CouncildetailModel {
  static String idString = 'id';
  static String smallImageUrlString = 'smallImageUrl';
  static String largeImageUrlString = 'largeImageUrl';
  static String nameString = 'name';
  static String descriptionString = 'description';
  static String gensecIdString = 'gensecId';
  static String jointGensecId1String = 'jointGensecId1';
  static String jointGensecId2String = 'jointGensecId2';
  static String isPORHolderString = 'isPORHolder';
  static String websiteUrlString = 'websiteUrl';
  static String facebookUrlString = 'facebookUrl';
  static String twitterUrlString = 'twitterUrl';
  static String instagramUrlString = 'instagramUrl';
  static String linkedinUrlString = 'linkedinUrl';
  static String youtubeUrlString = 'youtubeUrl';

  static Map<String, dynamic> councilDetailToMap(BuiltCouncilPost councilPost) {
    Map<String, dynamic> map = {
      idString: councilPost.id,
      nameString: councilPost.name == null ? '' : councilPost.name,
      descriptionString:
          councilPost.description == null ? '' : councilPost.description,
      gensecIdString: councilPost.gensec == null ? -1 : councilPost.gensec.id,
      jointGensecId1String: (councilPost.joint_gensec.isEmpty)
          ? -1
          : councilPost.joint_gensec[0].id,
      jointGensecId2String: (councilPost.joint_gensec.length < 2)
          ? -1
          : councilPost.joint_gensec[1].id,
      smallImageUrlString: councilPost.small_image_url == null
          ? ''
          : councilPost.small_image_url,
      largeImageUrlString: councilPost.large_image_url == null
          ? ''
          : councilPost.large_image_url,
      isPORHolderString: councilPost.is_por_holder == null
          ? 0
          : (councilPost.is_por_holder == true ? 1 : 0),
      websiteUrlString:
          councilPost.website_url == null ? '' : councilPost.website_url,
      facebookUrlString:
          councilPost.facebook_url == null ? '' : councilPost.facebook_url,
      twitterUrlString:
          councilPost.twitter_url == null ? '' : councilPost.twitter_url,
      instagramUrlString:
          councilPost.instagram_url == null ? '' : councilPost.instagram_url,
      linkedinUrlString:
          councilPost.linkedin_url == null ? '' : councilPost.linkedin_url,
      youtubeUrlString:
          councilPost.youtube_url == null ? '' : councilPost.youtube_url,
    };
    return map;
  }
}
