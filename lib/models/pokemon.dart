import 'package:pokimans/models/pokemon_species.dart';
import 'package:pokimans/models/pokemon_sprite.dart';
import 'package:pokimans/models/resource.dart';

const String listRequest = r"""
query samplePokeAPIquery {
  pokemon_v2_pokemon(order_by: {pokemon_species_id: asc}, limit: 100) {
    id
    name
    pokemon_v2_pokemonspecy {
      name
      id
      pokemon_v2_pokemonspeciesnames {
        name
        id
        genus
        pokemon_v2_language {
          name
        }
      }
      pokemon_v2_pokemondexnumbers(where: {pokemon_v2_pokedex: {name: {_eq: "national"}}}) {
        pokedex_number
        pokemon_v2_pokedex {
          name
        }
      }
    }
    pokemon_v2_pokemonsprites {
      sprites
    }
  }
}
""";

class Pokemon extends Resource {
  static const resourceName = "pokemon_v2_pokemon";
  final PokemonSpecies species;
  late final Map<String, List<PokemonSprite>> sprites;
  int? height;
  int? weight;

  Pokemon.fromMap(fromMap(Map<String, dynamic> data)) : species = data[""];
}