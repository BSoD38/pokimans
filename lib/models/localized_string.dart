import 'package:pokimans/models/resource.dart';

enum LanguageCode {
  jaHrkt,
  roomaji,
  ko,
  zhHant,
  fr,
  de,
  es,
  it,
  en,
  cs,
  ja,
  zhHans,
  ptBr
}

class LocalizedString extends Resource {
  static const String resourceName = "pokemon_v2_language";
  final LanguageCode languageCode;
  final String value;

  LocalizedString.fromMap(Map<String, dynamic> data)
      : languageCode = data[resourceName]["name"],
        value = data["name"],
        super.fromMap(data);
}