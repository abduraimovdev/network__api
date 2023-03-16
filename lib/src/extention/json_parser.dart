import 'dart:convert';

extension FromJson on String {
  Map<String, dynamic> get fromJson {
    return jsonDecode(this);
  }
}

extension ToJson on Map {
  String get toJson {
    return jsonEncode(this);
  }
}
