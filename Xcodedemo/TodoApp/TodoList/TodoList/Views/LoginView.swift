//
//  LoginView.swift
//  TodoList
//
//  Created by M.A on 4/10/25.
//
import SwiftUI

struct LoginView: View {
    
    //@State var email = ""
    //@State var password = ""
    
    @StateObject var viewModel = LoginViewViewModel()
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)
                
                
                //Login
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    TLButtonView(title: "Login", background: .blue){
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                // Create Account
                VStack {
                    Text("New arround here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom,50)
                Spacer()
                
            }
        }
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews : some View {
        LoginView()
    }
}
