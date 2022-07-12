//
//  TicTacToeApp.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 18/05/2022.
//

import SwiftUI

@main
struct TicTacToeApp: App {
    @UIApplicationDelegateAdaptor var delegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
