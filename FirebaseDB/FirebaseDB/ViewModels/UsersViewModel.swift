//
//  UserViewModel.swift
//  FirebaseDB
//
//  Created by Emi Sanzmor on 07/09/25.
//

import Foundation
import FirebaseDatabase

class UsersViewModel: ObservableObject {
    @Published var users: [User] = []
    
    private var ref = Database.database().reference()
    
    func addUser(user: User) {
        ref.child("\(user.id)").setValue([
            "userID": user.id,
            "userNA": user.name,
            "userSA": user.salary
        ])
    }
    
    func fetchUsers() {
        ref.observeSingleEvent(of: .value) { snapshot in
            var temp: [User] = []
            
            // Iterate through each user node inside the snapshot
            for child in snapshot.children {
                if let snap = child as? DataSnapshot,
                   let dict = snap.value as? [String: Any],
                   let id = dict["userID"] as? Int,
                   let name = dict["userNA"] as? String,
                   let salary = dict["userSA"] as? Int {
                    temp.append(User(id: id, name: name, salary: salary))
                }
            }
            DispatchQueue.main.async {
                self.users = temp
            }
        }
    }
}
