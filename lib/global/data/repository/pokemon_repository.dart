import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon_model.dart';

class PokemonRepository {
  final String apiUrl;
  final String accessToken;

  PokemonRepository({required this.apiUrl, required this.accessToken});

  Future<void> createPokemon(PokemonModel pokemon) async {
    final response = await http.post(
      Uri.parse('$apiUrl/pokemons'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
      body: jsonEncode(pokemon.toJson()..remove('id')),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to create pokemon');
    }
  }

  Future<PokemonModel> getPokemon(String id) async {
    final response = await http.get(
      Uri.parse('$apiUrl/pokemons/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      return PokemonModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load pokemon');
    }
  }

  Future<void> updatePokemon(PokemonModel pokemon) async {
    final response = await http.put(
      Uri.parse('$apiUrl/pokemons'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
      body: jsonEncode(pokemon.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update pokemon');
    }
  }

  Future<void> deletePokemon(String id) async {
    final response = await http.delete(
      Uri.parse('$apiUrl/pokemons/$id'),
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete pokemon');
    }
  }

  Future<List<PokemonModel>> getAllPokemons() async {
    final response = await http.get(
      Uri.parse('$apiUrl/pokemons'),
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);
      return List<PokemonModel>.from(l.map((model) => PokemonModel.fromJson(model)));
    } else {
      throw Exception('Failed to load pokemons');
    }
  }
}
