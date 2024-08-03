import 'package:bloc/bloc.dart';
import 'package:practicaflutter1/global/data/models/pokemon_model.dart';
import 'package:practicaflutter1/global/data/repository/pokemon_repository.dart';
import 'package:practicaflutter1/global/presentations/cubits/pokemon_state.dart';


class PokemonCubit extends Cubit<PokemonState>{
  final PokemonRepository pokemonRepository;
  PokemonCubit({required this.pokemonRepository}) : super(PokemonInitial());

  Future<void> createPokemon(PokemonModel pokemon) async {
    try{
      emit(PokemonLoading());
      await pokemonRepository.createPokemon(pokemon);
      final pokemon = await pokemonRepository.getAllPokemons();
      emit(PokemonSuccess(pokemon: pokemon));
    }catch (e){
      emit(PokemonError(message: e.toString()));
    }
  }

}