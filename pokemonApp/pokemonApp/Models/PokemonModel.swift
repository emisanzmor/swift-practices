//
//  PokemonModel.swift
//  pokemonApp
//
//  Created by Emi Sanzmor on 02/09/25.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    let id: Int
    let name: String
    let abilities: [PokemonAbility]
    let sprites: PokemonSprites
    
    struct NamedAPIResource: Codable {
        let name: String
        let url: String
        var id: String { name }
    }
    
    struct PokemonAbility: Codable {
        let is_hidden: Bool
        let slot: Int
        let ability: NamedAPIResource
    }
    
    struct PokemonSprites: Codable {
        let front_default: String
    }
    
}
