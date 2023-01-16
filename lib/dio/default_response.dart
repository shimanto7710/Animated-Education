import 'dart:convert';

class DefaultResponse {
  var data;

  DefaultResponse({
    this.data,
  });

  factory DefaultResponse.fromRawJson(String str) =>
      DefaultResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultResponse.fromJson(Map<String, dynamic> json) => DefaultResponse(
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "data": data,
      };
}
