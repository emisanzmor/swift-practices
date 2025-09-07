//
//  ContentView.swift
//  FirebaseDB
//
//  Created by Emi Sanzmor on 07/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = UsersViewModel()
    @State private var userID = ""
    @State private var userName = ""
    @State private var userSalary = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                TextField("ID", text: $userID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Name", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Salary", text: $userSalary)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                HStack(spacing: 15) {
                    Button("Insert") {
                        if let id = Int(userID), let salary = Int(userSalary) {
                            let newUser = User(id: id, name: userName, salary: salary)
                            viewModel.addUser(user: newUser)
                        }
                        
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button("Fetch") {
                        viewModel.fetchUsers()
                    }
                    .buttonStyle(.bordered)
                }
                
                List(viewModel.users) { user in
                    Text("ID: \(user.id), Name: \(user.name), Salary: \(user.salary)")
                }
                
            }
            .padding()
            .navigationTitle("Users Database")
        }
    }
}

#Preview {
    ContentView()
}
