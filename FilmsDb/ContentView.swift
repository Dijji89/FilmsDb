//
//  ContentView.swift
//  FilmsDb
//
//  Created by Nastassia on 17.10.24.
//


import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
            
            //signed in
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        
        TabView{
            
            MovieListView(userID: viewModel.currentUserID)
                .tabItem {
                    VStack {
                        Image(systemName: "tv")
                        Text("Movies")
                    }
                }
                .tag(0)
            
            MovieSearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .tag(1)
            
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
                .tag(2)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
