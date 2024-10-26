//
//  MovieListViewViewModel.swift
//  FilmsDb
//
//  Created by Nastassia on 18.10.24.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary tab
class MovieListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userID: String
    
    init(userID: String) {
        self.userID = userID
    }
    
    
    /// Delete item
    /// - Parameter id: item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userID)
            .collection("profiles")
            .document(id)
            .delete()
    }
}
