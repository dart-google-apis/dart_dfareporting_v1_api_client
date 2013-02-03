part of dfareporting_v1_api_client;

/** Represents a dimension filter. */
class DimensionFilter {

  /** The name of the dimension to filter. */
  String dimensionName;

  /** Kind of resource this is, in this case dfareporting#dimensionFilter. */
  String kind;

  /** The value of the dimension to filter for. */
  String value;

  /** Create new DimensionFilter from JSON data */
  DimensionFilter.fromJson(Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DimensionFilter */
  Map toJson() {
    var output = new Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DimensionFilter */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValue resource. */
class DimensionValue {

  /** Name of the dimension. */
  String dimensionName;

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ID associated with the value if available. */
  String id;

  /** Kind of resource this is, in this case dfareporting#dimensionValue. */
  String kind;

  /** The value of the dimension. */
  String value;

  /** Create new DimensionValue from JSON data */
  DimensionValue.fromJson(Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DimensionValue */
  Map toJson() {
    var output = new Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DimensionValue */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of DimensionValue resources. */
class DimensionValueList {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The dimension values returned in this response. */
  List<DimensionValue> items;

  /** Kind of list this is, in this case dfareporting#dimensionValueList. */
  String kind;

  /** Continuation token used to page through dimension values. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  String nextPageToken;

  /** Create new DimensionValueList from JSON data */
  DimensionValueList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for DimensionValueList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of DimensionValueList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValuesRequest. */
class DimensionValueRequest {

  /** The name of the dimension values should be requested for. */
  String dimensionName;

  /** The end date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  String endDate;

  /** List of filters to filter values by. The filters are ANDed. */
  List<DimensionFilter> filters;

  /** Kind of request this is, in this case dfareporting#dimensionValueRequest. */
  String kind;

  /** The start date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  String startDate;

  /** Create new DimensionValueRequest from JSON data */
  DimensionValueRequest.fromJson(Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("filters")) {
      filters = [];
      json["filters"].forEach((item) {
        filters.add(new DimensionFilter.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for DimensionValueRequest */
  Map toJson() {
    var output = new Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (filters != null) {
      output["filters"] = new List();
      filters.forEach((item) {
        output["filters"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of DimensionValueRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a File resource. A File contains the meta-data for a report run. It shows the status of the run and holds the urls to the generated report data if the run is finished and the status is "REPORT_AVAILABLE". */
class File {

  /** The date range for which the file has report data. */
  FileDateRange dateRange;

  /** ETag of this response for caching purposes. */
  String etag;

  /** The file name of the file. */
  String fileName;

  /** The unique ID of this report file. */
  String id;

  /** Kind of resource this is, in this case dfareporting#file. */
  String kind;

  /** The timestamp in milliseconds since epoch when this file was last modified. */
  String lastModifiedTime;

  /** The ID of the report this file was generated from. */
  String reportId;

  /** The status of the report file, one of:  
- "PROCESSING" 
- "REPORT_AVAILABLE" 
- "FAILED" 
- "CANCELLED" */
  String status;

  /** The urls where the completed report file can be downloaded. */
  FileUrls urls;

  /** Create new File from JSON data */
  File.fromJson(Map json) {
    if (json.containsKey("dateRange")) {
      dateRange = new FileDateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("reportId")) {
      reportId = json["reportId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("urls")) {
      urls = new FileUrls.fromJson(json["urls"]);
    }
  }

  /** Create JSON Object for File */
  Map toJson() {
    var output = new Map();

    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (reportId != null) {
      output["reportId"] = reportId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (urls != null) {
      output["urls"] = urls.toJson();
    }

    return output;
  }

  /** Return String representation of File */
  String toString() => JSON.stringify(this.toJson());

}

/** The date range for which the file has report data. */
class FileDateRange {

  /** The end date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  String endDate;

  /** The start date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  String startDate;

  /** Create new FileDateRange from JSON data */
  FileDateRange.fromJson(Map json) {
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for FileDateRange */
  Map toJson() {
    var output = new Map();

    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of FileDateRange */
  String toString() => JSON.stringify(this.toJson());

}

/** The urls where the completed report file can be downloaded. */
class FileUrls {

  /** Urls for generated CSV data. */
  FileUrlsCsv csv;

  /** Create new FileUrls from JSON data */
  FileUrls.fromJson(Map json) {
    if (json.containsKey("csv")) {
      csv = new FileUrlsCsv.fromJson(json["csv"]);
    }
  }

  /** Create JSON Object for FileUrls */
  Map toJson() {
    var output = new Map();

    if (csv != null) {
      output["csv"] = csv.toJson();
    }

    return output;
  }

  /** Return String representation of FileUrls */
  String toString() => JSON.stringify(this.toJson());

}

/** Urls for generated CSV data. */
class FileUrlsCsv {

  /** The url for downloading the report data through the API. */
  String apiUrl;

  /** The url for downloading the report data through a browser. */
  String browserUrl;

  /** Create new FileUrlsCsv from JSON data */
  FileUrlsCsv.fromJson(Map json) {
    if (json.containsKey("apiUrl")) {
      apiUrl = json["apiUrl"];
    }
    if (json.containsKey("browserUrl")) {
      browserUrl = json["browserUrl"];
    }
  }

  /** Create JSON Object for FileUrlsCsv */
  Map toJson() {
    var output = new Map();

    if (apiUrl != null) {
      output["apiUrl"] = apiUrl;
    }
    if (browserUrl != null) {
      output["browserUrl"] = browserUrl;
    }

    return output;
  }

  /** Return String representation of FileUrlsCsv */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of File resources. */
class FileList {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The files returned in this response. */
  List<File> items;

  /** Kind of list this is, in this case dfareporting#fileList. */
  String kind;

  /** Continuation token used to page through files. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  String nextPageToken;

  /** Create new FileList from JSON data */
  FileList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new File.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for FileList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of FileList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a Report resource. */
class Report {

  /** The account id this report belongs to. */
  String accountId;

  /** The report criteria. */
  ReportCriteria criteria;

  /** ETag of this response for caching purposes. */
  String etag;

  /** The file name used when generating report files for this report. */
  String fileName;

  /** The unique ID identifying this report resource. */
  String id;

  /** Kind of resource this is, in this case dfareporting#report. */
  String kind;

  /** The timestamp (in milliseconds since epoch) of when this report was last modified. */
  String lastModifiedTime;

  /** The name of the report. */
  String name;

  /** The user profile id of the owner of this report. */
  String ownerProfileId;

  /** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
  ReportSchedule schedule;

  /** The subbaccount id this report belongs to if applicable. */
  String subAccountId;

  /** The type of the report, currently only "STANDARD" is supported. */
  String type;

  /** Create new Report from JSON data */
  Report.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("criteria")) {
      criteria = new ReportCriteria.fromJson(json["criteria"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("ownerProfileId")) {
      ownerProfileId = json["ownerProfileId"];
    }
    if (json.containsKey("schedule")) {
      schedule = new ReportSchedule.fromJson(json["schedule"]);
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = json["subAccountId"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Report */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (criteria != null) {
      output["criteria"] = criteria.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (ownerProfileId != null) {
      output["ownerProfileId"] = ownerProfileId;
    }
    if (schedule != null) {
      output["schedule"] = schedule.toJson();
    }
    if (subAccountId != null) {
      output["subAccountId"] = subAccountId;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Report */
  String toString() => JSON.stringify(this.toJson());

}

/** The report criteria. */
class ReportCriteria {

  /** Activity group. */
  ReportCriteriaActivities activities;

  /** Custom Rich Media Events group. */
  ReportCriteriaCustomRichMediaEvents customRichMediaEvents;

  /** The date range this report should be run for. */
  ReportCriteriaDateRange dateRange;

  /** The list of filters dimensions are filtered on.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. */
  List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  List<String> metricNames;

  /** Create new ReportCriteria from JSON data */
  ReportCriteria.fromJson(Map json) {
    if (json.containsKey("activities")) {
      activities = new ReportCriteriaActivities.fromJson(json["activities"]);
    }
    if (json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = new ReportCriteriaCustomRichMediaEvents.fromJson(json["customRichMediaEvents"]);
    }
    if (json.containsKey("dateRange")) {
      dateRange = new ReportCriteriaDateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = [];
      json["dimensionFilters"].forEach((item) {
        dimensionFilters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("dimensions")) {
      dimensions = [];
      json["dimensions"].forEach((item) {
        dimensions.add(new SortedDimension.fromJson(item));
      });
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
  }

  /** Create JSON Object for ReportCriteria */
  Map toJson() {
    var output = new Map();

    if (activities != null) {
      output["activities"] = activities.toJson();
    }
    if (customRichMediaEvents != null) {
      output["customRichMediaEvents"] = customRichMediaEvents.toJson();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = new List();
      dimensionFilters.forEach((item) {
        output["dimensionFilters"].add(item.toJson());
      });
    }
    if (dimensions != null) {
      output["dimensions"] = new List();
      dimensions.forEach((item) {
        output["dimensions"].add(item.toJson());
      });
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ReportCriteria */
  String toString() => JSON.stringify(this.toJson());

}

/** Activity group. */
class ReportCriteriaActivities {

  /** List of activity filters. The dimension values need to be all either of type "dfa:activity" or "dfa:activityGroup". */
  List<DimensionValue> filters;

  /** List of names of floodlight activity metrics. */
  List<String> metricNames;

  /** Create new ReportCriteriaActivities from JSON data */
  ReportCriteriaActivities.fromJson(Map json) {
    if (json.containsKey("filters")) {
      filters = [];
      json["filters"].forEach((item) {
        filters.add(new DimensionValue.fromJson(item));
      });
    }
    if (json.containsKey("metricNames")) {
      metricNames = [];
      json["metricNames"].forEach((item) {
        metricNames.add(item);
      });
    }
  }

  /** Create JSON Object for ReportCriteriaActivities */
  Map toJson() {
    var output = new Map();

    if (filters != null) {
      output["filters"] = new List();
      filters.forEach((item) {
        output["filters"].add(item.toJson());
      });
    }
    if (metricNames != null) {
      output["metricNames"] = new List();
      metricNames.forEach((item) {
        output["metricNames"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ReportCriteriaActivities */
  String toString() => JSON.stringify(this.toJson());

}

/** The date range this report should be run for. */
class ReportCriteriaDateRange {

  /** The end date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  String endDate;

  /** The date range relative to the date of when the report is run, one of:  
- "TODAY" 
- "YESTERDAY" 
- "WEEK_TO_DATE" 
- "MONTH_TO_DATE" 
- "QUARTER_TO_DATE" 
- "YEAR_TO_DATE" 
- "PREVIOUS_WEEK" 
- "PREVIOUS_MONTH" 
- "PREVIOUS_QUARTER" 
- "PREVIOUS_YEAR" 
- "LAST_7_DAYS" 
- "LAST_30_DAYS" 
- "LAST_90_DAYS" 
- "LAST_365_DAYS" 
- "LAST_24_MONTHS" */
  String relativeDateRange;

  /** The start date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  String startDate;

  /** Create new ReportCriteriaDateRange from JSON data */
  ReportCriteriaDateRange.fromJson(Map json) {
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("relativeDateRange")) {
      relativeDateRange = json["relativeDateRange"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for ReportCriteriaDateRange */
  Map toJson() {
    var output = new Map();

    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (relativeDateRange != null) {
      output["relativeDateRange"] = relativeDateRange;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of ReportCriteriaDateRange */
  String toString() => JSON.stringify(this.toJson());

}

/** Custom Rich Media Events group. */
class ReportCriteriaCustomRichMediaEvents {

  /** List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeIdAndName. */
  List<DimensionValue> filteredEventIds;

  /** Create new ReportCriteriaCustomRichMediaEvents from JSON data */
  ReportCriteriaCustomRichMediaEvents.fromJson(Map json) {
    if (json.containsKey("filteredEventIds")) {
      filteredEventIds = [];
      json["filteredEventIds"].forEach((item) {
        filteredEventIds.add(new DimensionValue.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ReportCriteriaCustomRichMediaEvents */
  Map toJson() {
    var output = new Map();

    if (filteredEventIds != null) {
      output["filteredEventIds"] = new List();
      filteredEventIds.forEach((item) {
        output["filteredEventIds"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ReportCriteriaCustomRichMediaEvents */
  String toString() => JSON.stringify(this.toJson());

}

/** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
class ReportSchedule {

  /** Whether the schedule is active or not. Must be set to either true or false. */
  bool active;

  /** Defines every how many days, weeks or months the report should be run. Needs to be set when "repeats" is either "DAILY", "WEEKLY" or "MONTHLY". */
  int every;

  /** The expiration date when the scheduled report stops running. */
  String expirationDate;

  /** The interval the report is repeated for, one of:  
- "DAILY", also requires field "every" to be set. 
- "WEEKLY", also requires fields "every" and "repeatsOnWeekDays" to be set. 
- "TWICE_A_MONTH" 
- "MONTHLY", also requires fields "every" and "runsOnDayOfMonth" to be set. 
- "QUARTERLY" 
- "YEARLY" */
  String repeats;

  /** List of week days "WEEKLY" scheduled reports should run on. */
  List<String> repeatsOnWeekDays;

  /** Enum to define for "MONTHLY" scheduled reports whether reports should be repeated on the same day of the month as "startDate" or the same day of the week of the month. Possible values are:  
- DAY_OF_MONTH 
- WEEK_OF_MONTH  
Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02), "DAY_OF_MONTH" would run subsequent reports on the 2nd of every Month, and "WEEK_OF_MONTH" would run subsequent reports on the first Monday of the month. */
  String runsOnDayOfMonth;

  /** Start date of date range for which scheduled reports should be run. */
  String startDate;

  /** Create new ReportSchedule from JSON data */
  ReportSchedule.fromJson(Map json) {
    if (json.containsKey("active")) {
      active = json["active"];
    }
    if (json.containsKey("every")) {
      every = json["every"];
    }
    if (json.containsKey("expirationDate")) {
      expirationDate = json["expirationDate"];
    }
    if (json.containsKey("repeats")) {
      repeats = json["repeats"];
    }
    if (json.containsKey("repeatsOnWeekDays")) {
      repeatsOnWeekDays = [];
      json["repeatsOnWeekDays"].forEach((item) {
        repeatsOnWeekDays.add(item);
      });
    }
    if (json.containsKey("runsOnDayOfMonth")) {
      runsOnDayOfMonth = json["runsOnDayOfMonth"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for ReportSchedule */
  Map toJson() {
    var output = new Map();

    if (active != null) {
      output["active"] = active;
    }
    if (every != null) {
      output["every"] = every;
    }
    if (expirationDate != null) {
      output["expirationDate"] = expirationDate;
    }
    if (repeats != null) {
      output["repeats"] = repeats;
    }
    if (repeatsOnWeekDays != null) {
      output["repeatsOnWeekDays"] = new List();
      repeatsOnWeekDays.forEach((item) {
        output["repeatsOnWeekDays"].add(item);
      });
    }
    if (runsOnDayOfMonth != null) {
      output["runsOnDayOfMonth"] = runsOnDayOfMonth;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of ReportSchedule */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of reports. */
class ReportList {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The reports returned in this response. */
  List<Report> items;

  /** Kind of list this is, in this case dfareporting#reportList. */
  String kind;

  /** Continuation token used to page through reports. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  String nextPageToken;

  /** Create new ReportList from JSON data */
  ReportList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Report.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ReportList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ReportList */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a sorted dimension. */
class SortedDimension {

  /** Kind of resource this is, in this case dfareporting#sortedDimension. */
  String kind;

  /** The name of the dimension. */
  String name;

  /** An optional sort order for the dimension column, one of:  
- "ASCENDING" 
- "DESCENDING" */
  String sortOrder;

  /** Create new SortedDimension from JSON data */
  SortedDimension.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("sortOrder")) {
      sortOrder = json["sortOrder"];
    }
  }

  /** Create JSON Object for SortedDimension */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (sortOrder != null) {
      output["sortOrder"] = sortOrder;
    }

    return output;
  }

  /** Return String representation of SortedDimension */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents a UserProfile resource. */
class UserProfile {

  /** The account ID this profile belongs to. */
  String accountId;

  /** The account name this profile belongs to. */
  String accountName;

  /** ETag of this response for caching purposes. */
  String etag;

  /** Kind of resource this is, in this case dfareporting#userProfile. */
  String kind;

  /** The unique ID of the user profile. */
  String profileId;

  /** The sub account ID this profile belongs to if applicable. */
  String subAccountId;

  /** The sub account name this profile belongs to if applicable. */
  String subAccountName;

  /** The user name. */
  String userName;

  /** Create new UserProfile from JSON data */
  UserProfile.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("accountName")) {
      accountName = json["accountName"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileId")) {
      profileId = json["profileId"];
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = json["subAccountId"];
    }
    if (json.containsKey("subAccountName")) {
      subAccountName = json["subAccountName"];
    }
    if (json.containsKey("userName")) {
      userName = json["userName"];
    }
  }

  /** Create JSON Object for UserProfile */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (accountName != null) {
      output["accountName"] = accountName;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (subAccountId != null) {
      output["subAccountId"] = subAccountId;
    }
    if (subAccountName != null) {
      output["subAccountName"] = subAccountName;
    }
    if (userName != null) {
      output["userName"] = userName;
    }

    return output;
  }

  /** Return String representation of UserProfile */
  String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of user profiles. */
class UserProfileList {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The user profiles returned in this response. */
  List<UserProfile> items;

  /** Kind of list this is, in this case dfareporting#userProfileList. */
  String kind;

  /** Create new UserProfileList from JSON data */
  UserProfileList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new UserProfile.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for UserProfileList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of UserProfileList */
  String toString() => JSON.stringify(this.toJson());

}

