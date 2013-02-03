part of dfareporting_v1_api_client;

class DimensionValuesResource extends Resource {

  DimensionValuesResource(Client client) : super(client) {
  }

  /**
   * Retrieves list of report dimension values for a list of filters.
   *
   * [request] - DimensionValueRequest to send in this request
   *
   * [profileId] - The DFA user profile id.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [optParams] - Additional query parameters
   */
  Future<DimensionValueList> query(DimensionValueRequest request, String profileId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/dimensionvalues/query";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DimensionValueList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class FilesResource extends Resource {

  FilesResource(Client client) : super(client) {
  }

  /**
   * Lists files for a user profile.
   *
   * [profileId] - The DFA profile id.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 10
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [sortField] - The field to sort the list by.
   *   Default: LAST_MODIFIED_TIME
   *   Allowed values:
   *     ID - Sort by file id.
   *     LAST_MODIFIED_TIME - Sort by 'lastmodifiedAt' field.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   *   Default: DESCENDING
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  Future<FileList> list(String profileId, {int maxResults, String pageToken, String sortField, String sortOrder, Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/files";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (sortField != null && !["ID", "LAST_MODIFIED_TIME"].contains(sortField)) {
      paramErrors.add("Allowed values for sortField: ID, LAST_MODIFIED_TIME");
    }
    if (sortField != null) queryParams["sortField"] = sortField;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new FileList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsResource extends Resource {

  ReportsFilesResource _files;
  ReportsFilesResource get files => _files;

  ReportsResource(Client client) : super(client) {
  _files = new ReportsFilesResource(client);
  }

  /**
   * Deletes a report by its id.
   *
   * [profileId] - The DFA user profile id.
   *
   * [reportId] - The id of the report.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String profileId, String reportId, {Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a report by its id.
   *
   * [profileId] - The DFA user profile id.
   *
   * [reportId] - The id of the report.
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> get(String profileId, String reportId, {Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a report.
   *
   * [request] - Report to send in this request
   *
   * [profileId] - The DFA user profile id.
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> insert(Report request, String profileId, {Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves list of reports.
   *
   * [profileId] - The DFA user profile id.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 10
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [sortField] - The field to sort the list by.
   *   Default: LAST_MODIFIED_TIME
   *   Allowed values:
   *     ID - Sort by report id.
   *     LAST_MODIFIED_TIME - Sort by 'lastModifiedTime' field.
   *     NAME - Sort by display name of reports.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   *   Default: DESCENDING
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  Future<ReportList> list(String profileId, {int maxResults, String pageToken, String sortField, String sortOrder, Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (sortField != null && !["ID", "LAST_MODIFIED_TIME", "NAME"].contains(sortField)) {
      paramErrors.add("Allowed values for sortField: ID, LAST_MODIFIED_TIME, NAME");
    }
    if (sortField != null) queryParams["sortField"] = sortField;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ReportList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a report. This method supports patch semantics.
   *
   * [request] - Report to send in this request
   *
   * [profileId] - The DFA user profile id.
   *
   * [reportId] - The id of the report.
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> patch(Report request, String profileId, String reportId, {Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Runs a report.
   *
   * [profileId] - The DFA profile id.
   *
   * [reportId] - The id of the report.
   *
   * [synchronous] - If set and true, tries to run the report synchronously.
   *
   * [optParams] - Additional query parameters
   */
  Future<File> run(String profileId, String reportId, {bool synchronous, Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports/{reportId}/run";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (synchronous != null) queryParams["synchronous"] = synchronous;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new File.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a report.
   *
   * [request] - Report to send in this request
   *
   * [profileId] - The DFA user profile id.
   *
   * [reportId] - The id of the report.
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> update(Report request, String profileId, String reportId, {Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsFilesResource extends Resource {

  ReportsFilesResource(Client client) : super(client) {
  }

  /**
   * Retrieves a report file.
   *
   * [profileId] - The DFA profile id.
   *
   * [reportId] - The id of the report.
   *
   * [fileId] - The id of the report file.
   *
   * [optParams] - Additional query parameters
   */
  Future<File> get(String profileId, String reportId, String fileId, {Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports/{reportId}/files/{fileId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (fileId == null) paramErrors.add("fileId is required");
    if (fileId != null) urlParams["fileId"] = fileId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new File.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists files for a report.
   *
   * [profileId] - The DFA profile id.
   *
   * [reportId] - The id of the parent report.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 10
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [sortField] - The field to sort the list by.
   *   Default: LAST_MODIFIED_TIME
   *   Allowed values:
   *     ID - Sort by file id.
   *     LAST_MODIFIED_TIME - Sort by 'lastmodifiedAt' field.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   *   Default: DESCENDING
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  Future<FileList> list(String profileId, String reportId, {int maxResults, String pageToken, String sortField, String sortOrder, Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}/reports/{reportId}/files";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (sortField != null && !["ID", "LAST_MODIFIED_TIME"].contains(sortField)) {
      paramErrors.add("Allowed values for sortField: ID, LAST_MODIFIED_TIME");
    }
    if (sortField != null) queryParams["sortField"] = sortField;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new FileList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UserProfilesResource extends Resource {

  UserProfilesResource(Client client) : super(client) {
  }

  /**
   * Gets one user profile by id.
   *
   * [profileId] - The user profile id.
   *
   * [optParams] - Additional query parameters
   */
  Future<UserProfile> get(String profileId, {Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles/{profileId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UserProfile.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves list of user profiles for a user.
   *
   * [optParams] - Additional query parameters
   */
  Future<UserProfileList> list({Map optParams}) {
    var completer = new Completer();
    var url = "userprofiles";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UserProfileList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

