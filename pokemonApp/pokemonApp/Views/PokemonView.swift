//
//  PokemonView.swift
//  pokemonApp
//
//  Created by Emi Sanzmor on 05/09/25.
//

import SwiftUI

struct PokemonView: View {
    
    @State var pokemonId: String = ""
    @StateObject var viewModel = PokemonViewModel()
    
    var body: some View {
        
        VStack (spacing: 20){
            HStack {
                TextField("Pokedex number:", text: $pokemonId)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                Button("Search") {
                    if let id = Int(pokemonId) {
                        viewModel.loadPokemon(id: id)
                    }
                }.buttonStyle(.borderedProminent)
                    .tint(.red)
            }
            
            if let pokemon = viewModel.pokemon {
                Text(pokemon.name.capitalized)
                    .font(.title3)
                    .fontWeight(.bold)
                
                if let url = URL(string: pokemon.sprites.front_default) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        
                    
                        
                    } placeholder: {
                        ProgressView()
                    }
                    
                    
                }
                
                ForEach(pokemon.abilities, id: \.ability.name) { ability in
                    Text(ability.ability.name.capitalized)
                }
                
            }
        }.padding()
    }
}

#Preview {
    PokemonView()
}
