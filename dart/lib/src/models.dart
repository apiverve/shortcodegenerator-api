/// Response models for the Short Code Generator API.

/// API Response wrapper.
class ShortcodegeneratorResponse {
  final String status;
  final dynamic error;
  final ShortcodegeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ShortcodegeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ShortcodegeneratorResponse.fromJson(Map<String, dynamic> json) => ShortcodegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ShortcodegeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Short Code Generator API.

class ShortcodegeneratorData {
  List<String>? codes;
  num? count;
  num? length;
  String? charset;
  bool? urlSafe;

  ShortcodegeneratorData({
    this.codes,
    this.count,
    this.length,
    this.charset,
    this.urlSafe,
  });

  factory ShortcodegeneratorData.fromJson(Map<String, dynamic> json) => ShortcodegeneratorData(
      codes: (json['codes'] as List?)?.cast<String>(),
      count: json['count'],
      length: json['length'],
      charset: json['charset'],
      urlSafe: json['url_safe'],
    );
}

class ShortcodegeneratorRequest {
  int? count;
  int? length;
  String? charset;

  ShortcodegeneratorRequest({
    this.count,
    this.length,
    this.charset,
  });

  Map<String, dynamic> toJson() => {
      if (count != null) 'count': count,
      if (length != null) 'length': length,
      if (charset != null) 'charset': charset,
    };
}
