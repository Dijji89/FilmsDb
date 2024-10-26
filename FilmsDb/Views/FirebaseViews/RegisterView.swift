//
//  RegisterView.swift
//  FilmsDb
//
//  Created by Nastassia on 18.10.24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            //Header
            
            HeaderView(title: "Register",
                       subtitle: "Find movie for you!",
                       angle: -15,
                       background: Color(red: 53/255, green: 0/255, blue: 211/255))
                .padding(-30)
               
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                TextField("Email Adress", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                TLButton(
                    title: "Create Account",
                    background: .green) {
                        viewModel.register()
                        
                        // Attempt Registration
                        
                    }
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
