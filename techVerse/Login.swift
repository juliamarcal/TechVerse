//
//  Login.swift
//  techVerse
//
//  Created by Student15 on 29/04/23.
//

import SwiftUI

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false

    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Seja bem vindo")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color("azulEscuro"))
                    .padding(.top, 50.0)
                
                Text("Faça seu login")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .padding(.bottom, 80.0)
                
                
                HStack {
                    Text("email")
                    Spacer()
                }
                TextField("Digite seu email", text:$email)
                    .padding(.bottom, 21.0)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text("senha")
                    Spacer()
                }
                SecureField("Digite sua senha", text: $password){}
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Image(systemName: rememberMe ? "checkmark.square" : "square")
                        .foregroundColor(Color.gray)
                        .onTapGesture { rememberMe.toggle() }
                    Text("Lembre de mim")
                        .foregroundColor(Color.gray)
                    Spacer()
                }
                .padding(.bottom, 31.0) // HStack checkbox
                .padding(.top, 20.0)
                
                
                NavigationLink{
                    tbView()
                } label: {
                    HStack{
                        Text("Entrar")
                            .font(.headline)
                    }
                    .padding(.horizontal, 109.0)
                    .padding(.vertical, 15.0)
                    .foregroundColor(Color.white)
                    .background(Color("azulEscuro"))
                    .cornerRadius(12)
                }
                
                Divider()
                    .padding(.vertical, 30.0)
                
                VStack {
                    HStack {
                        Text("Ainda não é cadastrado?")
                        NavigationLink(
                            destination: Cadastro(),
                            label: {Text("Registre-se")}
                        ) // NavLink
                    } // HStack
                    Spacer()
                }
            } // VStack
            .padding(.horizontal, 22.0)
        } // Nav Stack
    }// body
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
