//
//  ApiService.swift
//  pokemonApp
//
//  Created by Emi Sanzmor on 02/09/25.
//

import Foundation

class ApiService {
    func getPokemon(id: Int, completion: @escaping (Pokemon?) -> Void) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)") else {
            print("URL inválida")
            return
        }
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let pokemon = try? JSONDecoder().decode(Pokemon.self, from: data)
            DispatchQueue.main.async {
                completion(pokemon)
            }
        }.resume()
    }

}

