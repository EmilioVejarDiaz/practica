import 'dart:convert';

class PokemonModel {

  final String id;
  final String name;
  final String type;
  final int level;
  final List<String>? abilities;

  PokemonModel({required this.id, required this.name, required this.type, required this.level, this.abilities});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      level: json['level'],
      abilities: json['abilities'] != null ? List<String>.from(json['abilities']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'level': level,
      'abilities': abilities,
    };
  }
}
