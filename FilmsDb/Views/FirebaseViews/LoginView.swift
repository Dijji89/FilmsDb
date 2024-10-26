//
//  LoginView.swift
//  FilmsDb
//
//  Created by Nastassia on 18.10.24.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView{
            VStack{
                //Header
                
               HeaderView(title: "MovieDb App",
                          subtitle: "Help you with select",
                          angle: 15,
                          background: Color(red: 0.58, green: 0.03, blue: 0.25) )
               .padding(-30)
                
               
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email )
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        

                    SecureField("Password", text: $viewModel.password )
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(
                        title: "Log in",
                        background: .blue) {
                            viewModel.login()
                            
                        }
                 
                }
                .offset(y: -50)                
                
                
                //Create Account
                VStack{
                    Text("New around here?")
                   
                    NavigationLink("Create An Account", destination: RegisterView() )
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
