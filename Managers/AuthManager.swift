//
//  AuthManager.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 04/09/2022.
//

import Foundation
import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager()
    
    private let firebaseAuth = Auth.auth()
    
    //MARK: - Sign up
    func registerNewUser(username: String, email: String, password: String, completion: @escaping (Bool) -> Void) {
        /*
         - Check if username is available
         - Check if email is available
         */
    }
    
    //MARK: - Login
    func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    //MARK: - LOGOUT
    public  func logout(completion: (Bool) -> Void) {
        
        do {
            try firebaseAuth.signOut()
            completion(true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
            completion(false)
        }
    }
}
