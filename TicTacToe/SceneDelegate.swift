//
//  SceneDelegate.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 11/07/2022.
//

import Foundation
import UIKit
import SwiftUI

class SceneDelegate: NSObject, UIWindowSceneDelegate, ObservableObject {
    func sceneWillEnterForeground(_ scene: UIScene) {
        //...
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        //...
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        //...
    }
    
//    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//        let contentView = HomeView().environment(\.managedObjectContext, context)
//        
//        if let windowScene = scene as? UIWindowScene {
//            let window = UIWindow(windowScene: windowScene)
//            window.rootViewController = UIHostingController(rootView: contentView)
//            self.window = window
//            window.makeKeyAndVisible()
//        }
//    }
}
