import 'package:pokimans/models/localized_string.dart';
import 'package:pokimans/models/resource.dart';

class PokemonSpecies extends Resource {
  static const resourceName = "pokemon_v2_pokemonspecy";
  final List<LocalizedString> names;
  List<LocalizedString>? flavorTexts;


}