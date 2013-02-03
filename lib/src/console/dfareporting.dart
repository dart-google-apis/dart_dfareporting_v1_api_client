part of dfareporting_v1_api_console;

/** Client to access the dfareporting v1 API */
/** Lets you create, run and download reports. */
class Dfareporting extends ConsoleClient {

  DimensionValuesResource _dimensionValues;
  DimensionValuesResource get dimensionValues => _dimensionValues;
  FilesResource _files;
  FilesResource get files => _files;
  ReportsResource _reports;
  ReportsResource get reports => _reports;
  UserProfilesResource _userProfiles;
  UserProfilesResource get userProfiles => _userProfiles;

  /** OAuth Scope2: View and manage DoubleClick for Advertisers reports */
  static const String DFAREPORTING_SCOPE = "https://www.googleapis.com/auth/dfareporting";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Dfareporting([Object auth]) : super(auth) {
    basePath = "/dfareporting/v1/";
    rootUrl = "https://www.googleapis.com:443/";
    _dimensionValues = new DimensionValuesResource(this);
    _files = new FilesResource(this);
    _reports = new ReportsResource(this);
    _userProfiles = new UserProfilesResource(this);
  }
}
