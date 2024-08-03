import 'package:equatable/equatable.dart';
import '../../data/models/pokemon_model.dart';

abstract class PokemonState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonSuccess extends PokemonState {
  final List<PokemonModel> pokemon;

  PokemonSuccess({required this.pokemon});

  @override
  List<Object?> get props => [pokemon];
}

class PokemonError extends PokemonState {
  final String message;

  PokemonError({required this.message});

  @override
  List<Object?> get props => [message];
}