//
//  PokemonViewModel.swift
//  pokemonApp
//
//  Created by Emi Sanzmor on 02/09/25.
//

import Foundation

class PokemonViewModel: ObservableObject {
    @Published var pokemon: Pokemon?
    private let apiService = ApiService()
    
    func loadPokemon(id: Int) {
        apiService.getPokemon(id: id) { [weak self] pokemon in
            self?.pokemon = pokemon
        }
    }
}
