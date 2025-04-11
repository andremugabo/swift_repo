//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by M.A on 4/10/25.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login(){
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return
        }
        print("called")
    }
    
    func validate(){
        
    }
}
