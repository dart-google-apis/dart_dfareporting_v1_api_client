part of dfareporting_v1_api;

/** Represents a dimension filter. */
class DimensionFilter {

  /** The name of the dimension to filter. */
  core.String dimensionName;

  /** Kind of resource this is, in this case dfareporting#dimensionFilter. */
  core.String kind;

  /** The value of the dimension to filter for. */
  core.String value;

  /** Create new DimensionFilter from JSON data */
  DimensionFilter.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValue resource. */
class DimensionValue {

  /** Name of the dimension. */
  core.String dimensionName;

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ID associated with the value if available. */
  core.String id;

  /** Kind of resource this is, in this case dfareporting#dimensionValue. */
  core.String kind;

  /** The value of the dimension. */
  core.String value;

  /** Create new DimensionValue from JSON data */
  DimensionValue.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of DimensionValue resources. */
class DimensionValueList {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The dimension values returned in this response. */
  core.List<DimensionValue> items;

  /** Kind of list this is, in this case dfareporting#dimensionValueList. */
  core.String kind;

  /** Continuation token used to page through dimension values. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  core.String nextPageToken;

  /** Create new DimensionValueList from JSON data */
  DimensionValueList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new DimensionValue.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for DimensionValueList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValuesRequest. */
class DimensionValueRequest {

  /** The name of the dimension values should be requested for. */
  core.String dimensionName;

  /** The end date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  core.String endDate;

  /** List of filters to filter values by. The filters are ANDed. */
  core.List<DimensionFilter> filters;

  /** Kind of request this is, in this case dfareporting#dimensionValueRequest. */
  core.String kind;

  /** The start date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  core.String startDate;

  /** Create new DimensionValueRequest from JSON data */
  DimensionValueRequest.fromJson(core.Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new DimensionFilter.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for DimensionValueRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a File resource. A File contains the meta-data for a report run. It shows the status of the run and holds the urls to the generated report data if the run is finished and the status is "REPORT_AVAILABLE". */
class File {

  /** The date range for which the file has report data. */
  FileDateRange dateRange;

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The file name of the file. */
  core.String fileName;

  /** The unique ID of this report file. */
  core.int id;

  /** Kind of resource this is, in this case dfareporting#file. */
  core.String kind;

  /** The timestamp in milliseconds since epoch when this file was last modified. */
  core.int lastModifiedTime;

  /** The ID of the report this file was generated from. */
  core.int reportId;

  /** The status of the report file, one of:  
- "PROCESSING" 
- "REPORT_AVAILABLE" 
- "FAILED" 
- "CANCELLED" */
  core.String status;

  /** The urls where the completed report file can be downloaded. */
  FileUrls urls;

  /** Create new File from JSON data */
  File.fromJson(core.Map json) {
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
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = (json["lastModifiedTime"] is core.String) ? core.int.parse(json["lastModifiedTime"]) : json["lastModifiedTime"];
    }
    if (json.containsKey("reportId")) {
      reportId = (json["reportId"] is core.String) ? core.int.parse(json["reportId"]) : json["reportId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("urls")) {
      urls = new FileUrls.fromJson(json["urls"]);
    }
  }

  /** Create JSON Object for File */
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** The date range for which the file has report data. */
class FileDateRange {

  /** The end date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  core.String endDate;

  /** The start date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  core.String startDate;

  /** Create new FileDateRange from JSON data */
  FileDateRange.fromJson(core.Map json) {
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for FileDateRange */
  core.Map toJson() {
    var output = new core.Map();

    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of FileDateRange */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The urls where the completed report file can be downloaded. */
class FileUrls {

  /** Urls for generated CSV data. */
  FileUrlsCsv csv;

  /** Create new FileUrls from JSON data */
  FileUrls.fromJson(core.Map json) {
    if (json.containsKey("csv")) {
      csv = new FileUrlsCsv.fromJson(json["csv"]);
    }
  }

  /** Create JSON Object for FileUrls */
  core.Map toJson() {
    var output = new core.Map();

    if (csv != null) {
      output["csv"] = csv.toJson();
    }

    return output;
  }

  /** Return String representation of FileUrls */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Urls for generated CSV data. */
class FileUrlsCsv {

  /** The url for downloading the report data through the API. */
  core.String apiUrl;

  /** The url for downloading the report data through a browser. */
  core.String browserUrl;

  /** Create new FileUrlsCsv from JSON data */
  FileUrlsCsv.fromJson(core.Map json) {
    if (json.containsKey("apiUrl")) {
      apiUrl = json["apiUrl"];
    }
    if (json.containsKey("browserUrl")) {
      browserUrl = json["browserUrl"];
    }
  }

  /** Create JSON Object for FileUrlsCsv */
  core.Map toJson() {
    var output = new core.Map();

    if (apiUrl != null) {
      output["apiUrl"] = apiUrl;
    }
    if (browserUrl != null) {
      output["browserUrl"] = browserUrl;
    }

    return output;
  }

  /** Return String representation of FileUrlsCsv */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of File resources. */
class FileList {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The files returned in this response. */
  core.List<File> items;

  /** Kind of list this is, in this case dfareporting#fileList. */
  core.String kind;

  /** Continuation token used to page through files. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  core.String nextPageToken;

  /** Create new FileList from JSON data */
  FileList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new File.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for FileList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a Report resource. */
class Report {

  /** The account id this report belongs to. */
  core.int accountId;

  /** The report criteria. */
  ReportCriteria criteria;

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The file name used when generating report files for this report. */
  core.String fileName;

  /** The unique ID identifying this report resource. */
  core.int id;

  /** Kind of resource this is, in this case dfareporting#report. */
  core.String kind;

  /** The timestamp (in milliseconds since epoch) of when this report was last modified. */
  core.String lastModifiedTime;

  /** The name of the report. */
  core.String name;

  /** The user profile id of the owner of this report. */
  core.int ownerProfileId;

  /** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
  ReportSchedule schedule;

  /** The subbaccount id this report belongs to if applicable. */
  core.int subAccountId;

  /** The type of the report, currently only "STANDARD" is supported. */
  core.String type;

  /** Create new Report from JSON data */
  Report.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = (json["accountId"] is core.String) ? core.int.parse(json["accountId"]) : json["accountId"];
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
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
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
      ownerProfileId = (json["ownerProfileId"] is core.String) ? core.int.parse(json["ownerProfileId"]) : json["ownerProfileId"];
    }
    if (json.containsKey("schedule")) {
      schedule = new ReportSchedule.fromJson(json["schedule"]);
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = (json["subAccountId"] is core.String) ? core.int.parse(json["subAccountId"]) : json["subAccountId"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Report */
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** Create new ReportCriteria from JSON data */
  ReportCriteria.fromJson(core.Map json) {
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
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new DimensionValue.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new SortedDimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
  }

  /** Create JSON Object for ReportCriteria */
  core.Map toJson() {
    var output = new core.Map();

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
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }

    return output;
  }

  /** Return String representation of ReportCriteria */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Activity group. */
class ReportCriteriaActivities {

  /** List of activity filters. The dimension values need to be all either of type "dfa:activity" or "dfa:activityGroup". */
  core.List<DimensionValue> filters;

  /** List of names of floodlight activity metrics. */
  core.List<core.String> metricNames;

  /** Create new ReportCriteriaActivities from JSON data */
  ReportCriteriaActivities.fromJson(core.Map json) {
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new DimensionValue.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
  }

  /** Create JSON Object for ReportCriteriaActivities */
  core.Map toJson() {
    var output = new core.Map();

    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }

    return output;
  }

  /** Return String representation of ReportCriteriaActivities */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Custom Rich Media Events group. */
class ReportCriteriaCustomRichMediaEvents {

  /** List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeIdAndName. */
  core.List<DimensionValue> filteredEventIds;

  /** Create new ReportCriteriaCustomRichMediaEvents from JSON data */
  ReportCriteriaCustomRichMediaEvents.fromJson(core.Map json) {
    if (json.containsKey("filteredEventIds")) {
      filteredEventIds = json["filteredEventIds"].map((filteredEventIdsItem) => new DimensionValue.fromJson(filteredEventIdsItem)).toList();
    }
  }

  /** Create JSON Object for ReportCriteriaCustomRichMediaEvents */
  core.Map toJson() {
    var output = new core.Map();

    if (filteredEventIds != null) {
      output["filteredEventIds"] = filteredEventIds.map((filteredEventIdsItem) => filteredEventIdsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ReportCriteriaCustomRichMediaEvents */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The date range this report should be run for. */
class ReportCriteriaDateRange {

  /** The end date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  core.String endDate;

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
  core.String relativeDateRange;

  /** The start date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  core.String startDate;

  /** Create new ReportCriteriaDateRange from JSON data */
  ReportCriteriaDateRange.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
class ReportSchedule {

  /** Whether the schedule is active or not. Must be set to either true or false. */
  core.bool active;

  /** Defines every how many days, weeks or months the report should be run. Needs to be set when "repeats" is either "DAILY", "WEEKLY" or "MONTHLY". */
  core.int every;

  /** The expiration date when the scheduled report stops running. */
  core.String expirationDate;

  /** The interval the report is repeated for, one of:  
- "DAILY", also requires field "every" to be set. 
- "WEEKLY", also requires fields "every" and "repeatsOnWeekDays" to be set. 
- "TWICE_A_MONTH" 
- "MONTHLY", also requires fields "every" and "runsOnDayOfMonth" to be set. 
- "QUARTERLY" 
- "YEARLY" */
  core.String repeats;

  /** List of week days "WEEKLY" scheduled reports should run on. */
  core.List<core.String> repeatsOnWeekDays;

  /** Enum to define for "MONTHLY" scheduled reports whether reports should be repeated on the same day of the month as "startDate" or the same day of the week of the month. Possible values are:  
- DAY_OF_MONTH 
- WEEK_OF_MONTH  
Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02), "DAY_OF_MONTH" would run subsequent reports on the 2nd of every Month, and "WEEK_OF_MONTH" would run subsequent reports on the first Monday of the month. */
  core.String runsOnDayOfMonth;

  /** Start date of date range for which scheduled reports should be run. */
  core.String startDate;

  /** Create new ReportSchedule from JSON data */
  ReportSchedule.fromJson(core.Map json) {
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
      repeatsOnWeekDays = json["repeatsOnWeekDays"].toList();
    }
    if (json.containsKey("runsOnDayOfMonth")) {
      runsOnDayOfMonth = json["runsOnDayOfMonth"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for ReportSchedule */
  core.Map toJson() {
    var output = new core.Map();

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
      output["repeatsOnWeekDays"] = repeatsOnWeekDays.toList();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of reports. */
class ReportList {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The reports returned in this response. */
  core.List<Report> items;

  /** Kind of list this is, in this case dfareporting#reportList. */
  core.String kind;

  /** Continuation token used to page through reports. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  core.String nextPageToken;

  /** Create new ReportList from JSON data */
  ReportList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Report.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ReportList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a sorted dimension. */
class SortedDimension {

  /** Kind of resource this is, in this case dfareporting#sortedDimension. */
  core.String kind;

  /** The name of the dimension. */
  core.String name;

  /** An optional sort order for the dimension column, one of:  
- "ASCENDING" 
- "DESCENDING" */
  core.String sortOrder;

  /** Create new SortedDimension from JSON data */
  SortedDimension.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a UserProfile resource. */
class UserProfile {

  /** The account ID this profile belongs to. */
  core.int accountId;

  /** The account name this profile belongs to. */
  core.String accountName;

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** Kind of resource this is, in this case dfareporting#userProfile. */
  core.String kind;

  /** The unique ID of the user profile. */
  core.int profileId;

  /** The sub account ID this profile belongs to if applicable. */
  core.int subAccountId;

  /** The sub account name this profile belongs to if applicable. */
  core.String subAccountName;

  /** The user name. */
  core.String userName;

  /** Create new UserProfile from JSON data */
  UserProfile.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = (json["accountId"] is core.String) ? core.int.parse(json["accountId"]) : json["accountId"];
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
      profileId = (json["profileId"] is core.String) ? core.int.parse(json["profileId"]) : json["profileId"];
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = (json["subAccountId"] is core.String) ? core.int.parse(json["subAccountId"]) : json["subAccountId"];
    }
    if (json.containsKey("subAccountName")) {
      subAccountName = json["subAccountName"];
    }
    if (json.containsKey("userName")) {
      userName = json["userName"];
    }
  }

  /** Create JSON Object for UserProfile */
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of user profiles. */
class UserProfileList {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The user profiles returned in this response. */
  core.List<UserProfile> items;

  /** Kind of list this is, in this case dfareporting#userProfileList. */
  core.String kind;

  /** Create new UserProfileList from JSON data */
  UserProfileList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new UserProfile.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for UserProfileList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of UserProfileList */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
